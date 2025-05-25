local Util = require("nightfall.util")

local M = {}

---@type nightfall.HighlightsFn
function M.get(c, opts)
	return {
		Comment                     = { fg = c.comment, bg = "NONE", italic = true, bold = false }, -- any comment
		ColorColumn                 = { bg = c.backgroundLight },                             -- used for the columns set with 'colorcolumn'
		-- Conceal                     = { fg = c.dark5 },                                           -- placeholder characters substituted for concealed text (see 'conceallevel')
		Cursor                      = { fg = c.background, bg = c.white },                    -- character under the cursor
		-- lCursor                     = { fg = c.bg, bg = c.fg },                                   -- the character under the cursor when |language-mapping| is used (see 'guicursor')
		-- CursorIM                    = { fg = c.bg, bg = c.fg },                                   -- like Cursor, but used when in IME mode |CursorIM|
		-- CursorColumn                = { bg = c.bg_highlight },                                    -- Screen-column at the cursor, when 'cursorcolumn' is set.
		CursorLine                  = { bg = Util.blend_bg(c.selection, 0.4, c.background) },                     -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
		Directory                   = { fg = c.blue },                                  -- directory names (and other special names in listings)
		Added                       = { fg = c.green },                                 -- diff mode: Added line |diff.txt|
		Modified                    = { fg = c.cyan },                                  -- diff mode: Changed line |diff.txt|
		Deleted                     = { fg = c.red },                                   -- diff mode: Deleted line |diff.txt|
		DiffAdd                     = { bg = Util.darken(c.green, 0.18, c.background) }, -- diff mode: Added line |diff.txt|
		DiffChange                  = { bg = Util.darken(c.blue, 0.07, c.background) }, -- diff mode: Changed line |diff.txt|
		DiffDelete                  = { bg = Util.darken(c.red, 0.18, c.background) },  -- diff mode: Deleted line |diff.txt|
		DiffText                    = { bg = Util.darken(c.blue, 0.30, c.background) }, -- diff mode: Changed text within a changed line |diff.txt|
		EndOfBuffer                 = { fg = c.background },                            -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
		ErrorMsg                    = { fg = c.red },                                   -- error messages on the command line
		VertSplit                   = { fg = c.floatBorder, bg = c.background },        -- the column separating vertically split windows
		WinSeparator                = { fg = c.floatBorder, bg = c.background }, -- the column separating vertically split windows
		Folded                      = { fg = c.blue, bg = c.background },                          -- line used for closed folds
		FoldColumn                  = { bg = c.background, fg = c.comment },            -- 'foldcolumn'
		SignColumn                  = { bg = c.background, fg = c.gutter },             -- column where |signs| are displayed
		SignColumnSB                = { bg = c.background, fg = c.gutter },             -- column where |signs| are displayed
		-- Substitute                  = { bg = c.red, fg = c.black },                               -- |:substitute| replacement text highlighting
		LineNr                      = { fg = c.gutter },                                -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
		CursorLineNr                = { fg = c.white, bold = true },                    -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
		LineNrAbove                 = { fg = c.gutter },
		LineNrBelow                 = { fg = c.gutter },
		MatchParen                  = { bg = c.selection, bold = true }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
		-- ModeMsg                     = { fg = c.fg_dark, bold = true },                                                        -- 'showmode' message (e.g., "-- INSERT -- ")
		-- MsgArea                     = { fg = c.fg_dark },                                                                     -- Area for messages and cmdline
		-- MoreMsg                     = { fg = c.blue },                                                                        -- |more-prompt|
		-- NonText                     = { fg = c.dark3 },                                                                       -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
		Number                      = { fg = c.darkOrange },         --  a number constant: 234, 0xff
		Normal                      = { fg = c.white, bg = c.background }, -- normal text
		-- NormalNC                    = { fg = c.fg, bg = opts.transparent and c.none or opts.dim_inactive and c.bg_dark or c.bg }, -- normal text in non-current windows
		-- NormalSB                    = { fg = c.fg_sidebar, bg = c.bg_sidebar },                                               -- normal text in sidebar
		NormalFloat                 = { fg = c.white, bg = c.background }, -- Normal text in floating windows.
		FloatBorder                 = { fg = c.floatBorder, bg = c.background },
		FloatTitle                  = { fg = c.white, bg = c.background },
		Pmenu                       = { bg = c.background, fg = c.white },       -- Popup menu: normal item.
		PmenuSel                    = { bg = Util.blend_bg(c.selection, 0.8) },  -- Popup menu: selected item.
		PmenuSbar                   = { bg = Util.blend_fg(c.backgroundLight, 0.95) }, -- Popup menu: scrollbar.
		PmenuThumb                  = { bg = c.gutter },                         -- Popup menu: Thumb of the scrollbar.
		-- Question                    = { fg = c.blue },                               -- |hit-enter| prompt and yes/no questions
		QuickFixLine                = { bg = c.selection, bold = true },         -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
		-- Search                      = { bg = c.bg_search, fg = c.fg },               -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
		-- IncSearch                   = { bg = c.orange, fg = c.black },               -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
		-- CurSearch                   = "IncSearch",
		-- SpecialKey                  = { fg = c.dark3 },                              -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
		SpellBad                    = { sp = c.red, undercurl = true }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
		SpellCap                    = { sp = c.warning, undercurl = true }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
		SpellLocal                  = { sp = c.info, undercurl = true }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
		SpellRare                   = { sp = c.hint, undercurl = true }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
		StatusLine                  = { fg = c.whiteDark, bg = c.none }, -- status line of current window
		StatusLineNC                = { fg = c.whiteDark, bg = c.none }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
		TabLine                     = { bg = c.backgroundAlt, fg = c.white },    -- tab pages line, not active tab page label
		TabLineFill                 = { bg = c.backgroundAlt },                              -- tab pages line, where there are no labels
		TabLineSel                  = { fg = c.backgroundAlt, bg = c.blue },                 -- tab pages line, active tab page label
		Title                       = { fg = c.blue, bold = true },                  -- titles for output from ":set all", ":autocmd" etc.
		Visual                      = { bg = c.selection }, -- Visual mode selection
		VisualNOS                   = { bg = c.selection }, -- Visual mode selection when vim is "Not Owning the Selection".
		WarningMsg                  = { fg = c.warning }, -- warning messages
		-- Whitespace                  = { fg = c.fg_gutter },                          -- "nbsp", "space", "tab" and "trail" in 'listchars'
		-- WildMenu                    = { bg = c.bg_visual },                          -- current match in 'wildmenu' completion
		WinBar                      = "StatusLine",                                  -- window bar
		WinBarNC                    = "StatusLineNC",                                -- window bar in inactive windows

		Bold                        = { bold = true, fg = c.white },              -- (preferred) any bold text
		Character                   = { fg = c.lightBlue },                       --  a character constant: 'c', '\n'
		Constant                    = { fg = c.darkOrange },                          -- (preferred) any constant
		Debug                       = { fg = c.orange },                          --    debugging statements
		Delimiter                   = "Special",                                  --  character that needs attention
		Error                       = { fg = c.red },                             -- (preferred) any erroneous construct
		Function                    = { fg = c.blue },                            -- function name (also: methods for classes)
		Identifier                  = { fg = c.white },                           -- (preferred) any variable name
		Italic                      = { italic = true, fg = c.white },            -- (preferred) any italic text
		Keyword                     = { fg = c.purple, italic = true },           --  any other keyword
		Operator                    = { fg = c.purple },                          -- "sizeof", "+", "*", etc.
		Boolean                     = { fg = c.darkOrange },
		PreProc                     = { fg = c.purple, italic = true },           -- (preferred) generic Preprocessor
		Special                     = { fg = c.cyan },                            -- (preferred) any special symbol
		Statement                   = "Keyword",                                  -- (preferred) any statement
		String                      = { fg = c.green },                           --   a string constant: "this is a string"
		Todo                        = { bg = c.attention, fg = c.attentionBackground }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX
		Type                        = { fg = c.yellow },                          -- (preferred) int, long, char, etc.
		Underlined                  = { underline = true },                       -- (preferred) text that stands out, HTML links
		-- debugBreakpoint             = { bg = Util.blend_bg(c.info, 0.1), fg = c.info }, -- used for breakpoint colors in terminal-debug
		-- debugPC                     = { bg = c.bg_sidebar },                         -- used for highlighting the current line in terminal-debug
		dosIniLabel                 = "@property",
		-- helpCommand                 = { bg = c.terminal_black, fg = c.blue },
		-- htmlH1                      = { fg = c.magenta, bold = true },
		-- htmlH2                      = { fg = c.blue, bold = true },
		-- qfFileName                  = { fg = c.blue },
		-- qfLineNr                    = { fg = c.dark5 },

		-- These groups are for the native LSP client. Some other LSP clients may
		-- use these groups, or use their own.
		LspReferenceText            = { bg = c.selection }, -- used for highlighting "text" references
		LspReferenceRead            = { bg = c.selection }, -- used for highlighting "read" references
		LspReferenceWrite           = { bg = c.selection }, -- used for highlighting "write" references
		LspSignatureActiveParameter = { bg = c.selection, bold = false },
		LspCodeLens                 = { fg = c.comment },
		LspInlayHint                = { bg = c.backgroundInlay, fg = c.lightBlue },
		LspInfoBorder               = { fg = c.floatBorder, bg = c.background },

		-- diagnostics
		DiagnosticError             = { fg = c.red },                                   -- Used as the base highlight group. Other Diagnostic highlights link to this by default
		DiagnosticWarn              = { fg = c.warning },                               -- Used as the base highlight group. Other Diagnostic highlights link to this by default
		DiagnosticInfo              = { fg = c.info },                                  -- Used as the base highlight group. Other Diagnostic highlights link to this by default
		DiagnosticHint              = { fg = c.hint },                                  -- Used as the base highlight group. Other Diagnostic highlights link to this by default
		-- DiagnosticUnnecessary       = { fg = c.terminal_black },                          -- Used as the base highlight group. Other Diagnostic highlights link to this by default
		DiagnosticVirtualTextError  = { bg = Util.blend_bg(c.red, 0.1), fg = c.red },   -- Used for "Error" diagnostic virtual text
		DiagnosticVirtualTextWarn   = { bg = Util.blend_bg(c.warning, 0.1), fg = c.warning }, -- Used for "Warning" diagnostic virtual text
		DiagnosticVirtualTextInfo   = { bg = Util.blend_bg(c.info, 0.1), fg = c.info }, -- Used for "Information" diagnostic virtual text
		DiagnosticVirtualTextHint   = { bg = Util.blend_bg(c.hint, 0.1), fg = c.hint }, -- Used for "Hint" diagnostic virtual text
		DiagnosticUnderlineError    = { undercurl = true, sp = c.red },                 -- Used to underline "Error" diagnostics
		DiagnosticUnderlineWarn     = { undercurl = true, sp = c.warning },             -- Used to underline "Warning" diagnostics
		DiagnosticUnderlineInfo     = { undercurl = true, sp = c.info },                -- Used to underline "Information" diagnostics
		DiagnosticUnderlineHint     = { undercurl = true, sp = c.hint },                -- Used to underline "Hint" diagnostics

		-- Health
		healthError                 = { fg = c.red },
		healthSuccess               = { fg = c.info },
		healthWarning               = { fg = c.warning },

		-- CUSTOM HL GROUPS
		Attention                   = { fg = c.attention, bg = c.attentionBackground },
	}
end

return M
