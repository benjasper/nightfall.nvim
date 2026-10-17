local M = {}

---@type nightfall.HighlightsFn
function M.get(c)
	local groups = {
		NeoTreeGitUntracked = { fg = c.whiteDark }
	}

	return groups
end

return M
