local M = {}

---@type nightfall.HighlightsFn
function M.get(c)
	return {
		BlinkCmpMenuBorder = { fg = c.floatBorder },
		BlinkCmpDocBorder = { fg = c.floatBorder },
		BlinkCmpSignatureHelpBorder = { fg = c.floatBorder },

		BlinkCmpLabel = { fg = c.silver },
		BlinkCmpLabelDeprecated = { fg = c.silver, strikethrough = true },

		BlinkCmpLabelMatch = { fg = c.white},
		BlinkCmpKindText = { fg = c.silver },
		BlinkCmpKindMethod = { fg = c.blue },
		BlinkCmpKindFunction = { fg = c.blue },
		BlinkCmpKindConstructor = { fg = c.blue },
		BlinkCmpKindField = { fg = c.green },
		BlinkCmpKindVariable = { fg = c.green },
		BlinkCmpKindClass = { fg = c.yellow },
		BlinkCmpKindInterface = { fg = c.green },
		BlinkCmpKindModule = { fg = c.cyan },
		BlinkCmpKindProperty = { fg = c.lightBlue },
		BlinkCmpKindUnit = { fg = c.green },
		BlinkCmpKindValue = { fg = c.orange },
		BlinkCmpKindEnum = { fg = c.yellow },
		BlinkCmpKindKeyword = { fg = c.purple },
		BlinkCmpKindSnippet = { fg = c.pink },
		BlinkCmpKindFile = { fg = c.blue },
		BlinkCmpKindReference = { fg = c.green },
		BlinkCmpKindFolder = { fg = c.blue },
		BlinkCmpKindEnumMember = { fg = c.cyan },
		BlinkCmpKindConstant = { fg = c.orange },
		BlinkCmpKindStruct = { fg = c.blue },
		BlinkCmpKindEvent = { fg = c.blue },
		BlinkCmpKindOperator = { fg = c.purple },
		BlinkCmpKindTypeParameter = { fg = c.yellow },
		BlinkCmpKindCopilot = { fg = c.green },
	}
end

return M
