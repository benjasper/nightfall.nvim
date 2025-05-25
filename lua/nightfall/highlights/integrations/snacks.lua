local M = {}

---@type nightfall.HighlightsFn
function M.get(c)
	local groups = {
		SnacksPickerGitStatusModified = "Modified"
	}

	return groups
end

return M
