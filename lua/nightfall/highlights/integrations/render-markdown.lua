local M = {}

-- render-markdown.nvim highlight groups:
-- https://github.com/MeanderingProgrammer/render-markdown.nvim?tab=readme-ov-file#colors

---@type nightfall.HighlightsFn
function M.get(c)
	local groups = {
		RenderMarkdownCode = { bg = c.background },
		RenderMarkdownCodeInline = { bg = c.backgroundLighter },
		-- RenderMarkdownBullet = { fg = C.sky },
		-- RenderMarkdownTableHead = { fg = C.blue },
		-- RenderMarkdownTableRow = { fg = C.lavender },
		-- RenderMarkdownSuccess = { fg = C.green },
		-- RenderMarkdownInfo = { fg = C.sky },
		-- RenderMarkdownHint = { fg = C.teal },
		-- RenderMarkdownWarn = { fg = C.yellow },
		-- RenderMarkdownError = { fg = C.red },
	}

	return groups
end

return M
