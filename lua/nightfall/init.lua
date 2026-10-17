local palettes = require("nightfall.colors")

local paletteByName = {
	default = palettes.default,
	darker = palettes.darker
}

-- nightfall.lua
local M = {
	---@type table<string, nightfall.Highlight>
	highlights = {},

	---@type nightfall.Config
	options = {},
}

-- Setup configuration
---@param options? nightfall.Config
function M.setup(options)
	local opts = require("nightfall.config")
	if options == nil then
		options = {}
	end
	opts.setup(options)
	M.options = opts.options

	local selectedPalette = paletteByName[opts.options.palette]

	local highlights = require("nightfall.highlights").setup(selectedPalette, opts.options)
	M.highlights = highlights

	-- Special handling for cases where semantic token priority is the same
	vim.api.nvim_create_autocmd("LspTokenUpdate", {
		callback = function(args)
			local token = args.data.token
			if
				token.type == "type"
				and token.modifiers.defaultLibrary
				and token.modifiers.interface
			then
				vim.lsp.semantic_tokens.highlight_token(token, args.buf, args.data.client_id, "@lsp.type.builtinType")
			end
		end,
	})
end

M.load = function()
	if M.highlights == nil then
		vim.notify("Nightfall: Highlights not loaded yet. Call setup() first.", vim.log.levels.ERROR)
		return
	end

	-- only needed to clear when not the default colorscheme
	if vim.g.colors_name then
		vim.cmd("hi clear")
	end

	vim.o.termguicolors = true

	local theme_name = "nightfall"
	if M.options.palette ~= 'default' then
		theme_name = theme_name .. "-" .. M.options.palette
	end

	vim.g.colors_name = theme_name

	for hl, val in pairs(M.highlights) do
		if type(val) == "string" then
			val = { link = val }
		end

		vim.api.nvim_set_hl(0, hl, val)
	end
end

return M