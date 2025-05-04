local U = require("nightfall.util")

local M = {}

-- render-markdown.nvim highlight groups:
-- https://github.com/MeanderingProgrammer/render-markdown.nvim?tab=readme-ov-file#colors

---@type nightfall.HighlightsFn
function M.get(c)
	return {
		NeogitBranch = {
			fg = c.orange,
			bold = true,
		},
		NeogitRemote = {
			fg = c.green,
			bold = true,
		},
		NeogitUnmergedInto = {
			link = "Function",
		},
		NeogitUnpulledFrom = {
			link = "Function",
		},
		NeogitObjectId = {
			link = "Comment",
		},
		NeogitStash = {
			link = "Comment",
		},
		NeogitRebaseDone = {
			link = "Comment",
		},
		NeogitHunkHeader = {
			bg = U.darken(c.blue, 0.095, c.background),
			fg = U.darken(c.blue, 0.5, c.background),
		},
		NeogitHunkHeaderHighlight = {
			bg = U.darken(c.blue, 0.215, c.background),
			fg = c.blue,
		},
		NeogitDiffContextHighlight = {
			bg = c.backgroundLight,
		},
		NeogitChangeModified = {
			fg = c.blue,
			bold = true,
		},
		NeogitChangeDeleted = {
			fg = c.red,
			bold = true,
		},
		NeogitChangeAdded = {
			fg = c.green,
			bold = true,
		},
		NeogitChangeRenamed = {
			fg = c.purple,
			bold = true,
		},
		NeogitChangeUpdated = {
			fg = c.orange,
			bold = true,
		},
		NeogitChangeCopied = {
			fg = c.pink,
			bold = true,
		},
		NeogitChangeBothModified = {
			fg = c.yellow,
			bold = true,
		},
		NeogitChangeNewFile = {
			fg = c.green,
			bold = true,
		},
		NeogitUntrackedfiles = {
			fg = c.purple,
			bold = true,
		},
		NeogitUnstagedchanges = {
			fg = c.purple,
			bold = true,
		},
		NeogitUnmergedchanges = {
			fg = c.purple,
			bold = true,
		},
		NeogitUnpulledchanges = {
			fg = c.purple,
			bold = true,
		},
		NeogitRecentcommits = {
			fg = c.purple,
			bold = true,
		},
		NeogitStagedchanges = {
			fg = c.purple,
			bold = true,
		},
		NeogitStashes = {
			fg = c.purple,
			bold = true,
		},
		NeogitRebasing = {
			fg = c.purple,
			bold = true,
		},
		NeogitNotificationInfo = {
			fg = c.blue,
		},
		NeogitNotificationWarning = {
			fg = c.yellow,
		},
		NeogitNotificationError = {
			fg = c.red,
		},
		NeogitGraphRed = {
			fg = c.red,
		},
		NeogitGraphWhite = {
			fg = c.background,
		},
		NeogitGraphYellow = {
			fg = c.yellow,
		},
		NeogitGraphGreen = {
			fg = c.green,
		},
		NeogitGraphCyan = {
			fg = c.blue,
		},
		NeogitGraphBlue = {
			fg = c.blue,
		},
		NeogitGraphPurple = {
			fg = c.pink,
		},
		NeogitGraphGray = {
			fg = c.gutter,
		},
		NeogitGraphOrange = {
			fg = c.orange,
		},
		NeogitGraphBoldRed = {
			fg = c.red,
			bold = true,
		},
		NeogitGraphBoldWhite = {
			fg = c.white,
			bold = true,
		},
		NeogitGraphBoldYellow = {
			fg = c.yellow,
			bold = true,
		},
		NeogitGraphBoldGreen = {
			fg = c.green,
			bold = true,
		},
		NeogitGraphBoldCyan = {
			fg = c.blue,
			bold = true,
		},
		NeogitGraphBoldBlue = {
			fg = c.blue,
			bold = true,
		},
		NeogitGraphBoldPurple = {
			fg = c.pink,
			bold = true,
		},
		NeogitGraphBoldGray = {
			fg = c.gutter,
			bold = true,
		},
		NeogitDiffContext = {
			bg = c.background,
		},
		NeogitPopupBold = {
			bold = true,
		},
		NeogitPopupSwitchKey = {
			fg = c.pink,
		},
		NeogitPopupOptionKey = {
			fg = c.pink,
		},
		NeogitPopupConfigKey = {
			fg = c.pink,
		},
		NeogitPopupActionKey = {
			fg = c.pink,
		},
		NeogitFilePath = {
			fg = c.blue,
			italic = true,
		},
		NeogitDiffHeader = {
			bg = c.background,
			fg = c.blue,
			bold = true,
		},
		NeogitDiffHeaderHighlight = {
			bg = c.background,
			fg = c.orange,
			bold = true,
		},
		NeogitUnpushedTo = {
			fg = c.pink,
			bold = true,
		},
		NeogitFold = {
			fg = c.none,
			bg = c.none,
		},
		NeogitSectionHeader = {
			fg = c.purple,
			bold = true,
		},
		NeogitTagName = {
			fg = c.yellow,
		},
		NeogitTagDistance = {
			fg = c.blue,
		},
		NeogitWinSeparator = {
			link = "WinSeparator",
		},
	}
end

return M
