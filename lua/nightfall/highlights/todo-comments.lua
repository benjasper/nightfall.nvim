local M = {}

---@type nightfall.HighlightsFn
function M.get(c)
	-- stylua: ignore
	return {
		["TodoBgTODO"] = { fg = c.attention, bg = c.attenttionBackground },
		["TodoFgTODO"] = { fg = c.attention },
	}
end

return M
