local M = {}

---@type nightfall.HighlightsFn
function M.get(c)
	local groups = {
		MiniIconsAzure = { fg = c.blue },
		MiniIconsBlue = { fg = c.blue },
		MiniIconsCyan = { fg = c.cyan },
		MiniIconsGreen = { fg = c.green },
		MiniIconsGrey = { fg = c.silver },
		MiniIconsOrange = { fg = c.orange },
		MiniIconsPurple = { fg = c.purple },
		MiniIconsRed = { fg = c.red },
		MiniIconsYellow = { fg = c.yellow },
	}

	return groups
end

return M
