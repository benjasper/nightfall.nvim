local M = {}

-- Plugin support definition.  Maps plugin names to highlight group names.
M.plugins = {
	["telescope.nvim"] = "telescope",          -- Telescope support
	["todo-comments.nvim"] = "todo-comments",  -- Todo Comments support
	["blink.cmp"] = "blink",                   -- Blink support
	["render-markdown.nvim"] = "render-markdown", -- Render Markdown support
	["neogit"] = "neogit",                     -- Neogit support
	["gitsigns.nvim"] = "gitsigns",            -- Gitsigns support
	["mini.icons"] = "mini-icons",
	["nvim-dap"] = "dap"
}

--- Setup function for highlights.
---
--- This function sets up highlight groups based on configured plugins and user options.
---@param colors PaletteColors:  Color palette to use for highlights.
---@param opts nightfall.Config: Configuration options for nightfall.
---@return nightfall.Highlights: A table of highlight groups to apply.
function M.setup(colors, opts)
	-- Load groups that are not detected and configure the detected plugins automatically.
	local baseGroups = {
		base = true,
		lsp = true,
		kinds = true,
		treesitter = true,
	}

	local groups = {}

	-- Automatically enable plugin highlights if `opts.plugins.all` is true.
	if opts.plugins.all then
		for _, group in pairs(M.plugins) do
			groups[group] = true -- Enable all plugin highlight groups.
		end
	elseif opts.plugins.auto and package.loaded.lazy then
		-- Automatically enable plugin highlights if lazy.nvim is loaded and `opts.plugins.auto` is true.
		local plugins = require("lazy.core.config").plugins

		for plugin, group in pairs(M.plugins) do
			if plugins[plugin] then
				-- Check if the plugin is loaded.
				groups[group] = true -- Enable highlight group if plugin is loaded.
			end
		end
	end

	-- Manually enable/disable plugins based on user configuration.
	for plugin, group in pairs(M.plugins) do
		local use = opts.plugins[group]
		use = use == nil and opts.plugins[plugin] or use -- if group is not specified, check for plugin specific setting
		if use ~= nil then
			if type(use) == "table" then
				use = use.enabled -- check for .enabled key if the value is a table
			end
			groups[group] = use or nil -- Enable/disable based on user configuration.
		end
	end

	local ret = {} -- Table to store the resulting highlight groups.

	-- Load base highlight groups.
	for group, enabled in pairs(baseGroups) do
		if enabled then
			-- If the group is enabled.
			for hl, val in pairs(require("nightfall.highlights." .. group).get(colors, opts)) do
				-- Load the highlight group module and merge its highlights into the result.
				ret[hl] = val
			end
		end
	end

	-- Merge highlight groups from enabled plugins.
	for group, enabled in pairs(groups) do
		if enabled then
			-- If the group is enabled.
			for hl, val in pairs(require("nightfall.highlights.integrations." .. group).get(colors, opts)) do
				-- Load the highlight group module and merge its highlights into the result.
				ret[hl] = val
			end
		end
	end

	return ret -- Return the resulting highlight groups.
end

return M
