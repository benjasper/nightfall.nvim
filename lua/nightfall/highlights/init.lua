local M = {}

-- Plugin support definition.  Maps plugin names to highlight group names.
M.plugins = {
	["treesitter"] = "treesitter", -- Treesitter support
	["telescope.nvim"] = "telescope", -- Telescope support
	["todo-comments.nvim"] = "todo-comments", -- Todo Comments support
}

--- Setup function for highlights.
---
--- This function sets up highlight groups based on configured plugins and user options.
---@param colors PaletteColors:  Color palette to use for highlights.
---@param opts nightfall.Config: Configuration options for nightfall.
---@return nightfall.Highlights: A table of highlight groups to apply.
function M.setup(colors, opts)
	local groups = {
		base = true, -- Always enable base highlights.
		treesitter = true, -- Enable treesitter highlights by default.
		lsp = true, -- Enable LSP highlights by default.
		kinds = true, -- Enable kinds highlights by default.
		["todo-comments"] = true, -- Enable todo-comments highlights by default.
	}

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
				print("Nightfall: enabling " .. group .. " for " .. plugin) -- Print a message indicating the highlight group is enabled.
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

	-- Merge highlight groups from enabled plugins.
	for group, enabled in pairs(groups) do
		if enabled then
			-- If the group is enabled.
			for hl, val in pairs(require("nightfall.highlights." .. group).get(colors, opts)) do
				-- Load the highlight group module and merge its highlights into the result.
				ret[hl] = val
			end
		end
	end

	return ret -- Return the resulting highlight groups.
end

return M -- Return the module.

