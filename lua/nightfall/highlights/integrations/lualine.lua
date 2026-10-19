local M = {}

---@param colors PaletteColors
---@param opts? nightfall.Config
function M.get(colors, opts)
	opts = opts or require("nightfall.config").options
	return {
		normal = {
			a = { bg = opts.transparent and colors.none or colors.lightBlue, fg = opts.transparent and colors.lightBlue or colors.background, gui = 'bold' },
			b = { bg = opts.transparent and colors.none or colors.selection },
			c = { bg = opts.transparent and colors.none or colors.background },
		},
		insert = {
			a = { bg = opts.transparent and colors.none or colors.green, fg = opts.transparent and colors.green or colors.background, gui = 'bold' },
			b = { bg = opts.transparent and colors.none or colors.selection },
			c = { bg = opts.transparent and colors.none or colors.background },
		},
		visual = {
			a = { bg = opts.transparent and colors.none or colors.white, fg = opts.transparent and colors.white or colors.background, gui = 'bold' },
			b = { bg = opts.transparent and colors.none or colors.selection },
			c = { bg = opts.transparent and colors.none or colors.background },
		},
		replace = {
			a = { bg = opts.transparent and colors.none or colors.blue, fg = opts.transparent and colors.blue or colors.background, gui = 'bold' },
			b = { bg = opts.transparent and colors.none or colors.selection },
			c = { bg = opts.transparent and colors.none or colors.background },
		},
		command = {
			a = { bg = opts.transparent and colors.none or colors.orange, fg = opts.transparent and colors.orange or colors.background, gui = 'bold' },
			b = { bg = opts.transparent and colors.none or colors.selection },
			c = { bg = opts.transparent and colors.none or colors.background },
		},
		inactive = {
			a = { bg = opts.transparent and colors.none or colors.background, fg = opts.transparent and colors.white or colors.background, gui = 'bold' },
			b = { bg = opts.transparent and colors.none or colors.background },
			c = { bg = opts.transparent and colors.none or colors.background },
		}
	}
end

return M