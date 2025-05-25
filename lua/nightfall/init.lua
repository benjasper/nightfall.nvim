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
