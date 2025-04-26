local palette = require("nightfall.colors")

-- nightfall.lua
local M = {}

-- Setup highlight groups
function M.setup()
	local opts = require("nightfall.config")
	opts.setup({})

	local highlights = require("nightfall.highlights").setup(palette, opts.options)

	-- only needed to clear when not the default colorscheme
	if vim.g.colors_name then
		vim.cmd("hi clear")
	end

	vim.o.termguicolors = true

	for hl, val in pairs(highlights) do
		if type(val) == "string" then
			val = { link = val }
		end

		vim.api.nvim_set_hl(0, hl, val)
	end
end

M.load = function()
	vim.g.colors_name = "nightfall"
end

return M