local M = {}

---@type nightfall.HighlightsFn
function M.get(c)
	-- stylua: ignore
	return {
		["TodoBgTODO"] = { fg = c.attention, bg = c.attentionBackground },
		["TodoFgTODO"] = { fg = c.attention, bg = c.attentionBackground },
		["TodoBgNOTE"] = { fg = c.attention, bg = c.attentionBackground },
		["TodoFgNOTE"] = { fg = c.attention, bg = c.attentionBackground },
	}
end

return M
