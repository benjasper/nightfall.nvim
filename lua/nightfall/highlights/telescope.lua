local M = {}

---@type nightfall.HighlightsFn
function M.get(c)
	return {
		["TelescopeBorder"] = { fg = c.floatBorder },
		["TelescopeTitle"] = { fg = c.white }
	}
end

return M

