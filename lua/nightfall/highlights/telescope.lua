local M = {}

---@type nightfall.HighlightsFn
function M.get(c)
	-- stylua: ignore
	return {
		["TelescopeBorder"] = { fg = c.floatBorder },
		["TelescopeTitle"] = { fg = c.white }
	}
end

return M