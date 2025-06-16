local M = {}

---@type nightfall.HighlightsFn
function M.get(c)
	local groups = {
		NavstackCurrent = { fg = c.pink },
		NavstackPinned = { fg = c.darkOrange },
	}

	return groups
end

return M