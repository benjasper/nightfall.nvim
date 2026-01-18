local Util = require("nightfall.util")

local M = {}

---@type nightfall.HighlightsFn
function M.get(c)
	local groups = {
		NavstackCurrent = { fg = c.attention, bg = Util.darken(c.attention, 0.3) },
		NavstackIndex = { fg = c.whiteDark, bg = Util.darken(c.whiteDark, 0.3) },
		NavstackPinned = { fg = c.darkOrange },
	}

	return groups
end

return M