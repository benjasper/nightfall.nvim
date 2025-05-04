local M = {}
local U = require("nightfall.util")

---@type nightfall.HighlightsFn
function M.get(c)
	return {
		GitSignsAddPreview = { link = "DiffAdd" },
		GitSignsDeletePreview = { link = "DiffDelete" },
		GitSignsAddInline = { bg = U.darken(c.green, 0.36, c.background) },
		GitSignsChangeInline = { bg = U.darken(c.blue, 0.14, c.background) },
		GitSignsDeleteInline = { bg = U.darken(c.red, 0.36, c.background) },
	}
end

return M
