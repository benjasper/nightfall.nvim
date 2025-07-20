local palette = require("nightfall.colors")

-- nightfall.lua
local M = {
	---@type table<string, nightfall.Highlight>
	highlights = {},
}

-- Setup highlight groups
function M.setup()
	local opts = require("nightfall.config")
	opts.setup({})

	local highlights = require("nightfall.highlights").setup(palette, opts.options)
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

	vim.g.colors_name = "nightfall"

	for hl, val in pairs(M.highlights) do
		if type(val) == "string" then
			val = { link = val }
		end

		vim.api.nvim_set_hl(0, hl, val)
	end
end

return M