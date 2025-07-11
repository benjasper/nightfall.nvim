local M = {}

---@type nightfall.HighlightsFn
function M.get(c, opts)
	local ret = {
		["@annotation"]                 = { fg = c.blue },
		["@attribute"]                  = { fg = c.blue },
		["@boolean"]                    = "Boolean",
		["@character"]                  = "Character",
		["@character.printf"]           = "SpecialChar",
		["@character.special"]          = "SpecialChar",
		["@comment"]                    = "Comment",
		["@comment.error"]              = { fg = c.red },
		["@comment.hint"]               = { fg = c.hint },
		["@comment.info"]               = { fg = c.info },
		["@comment.note"]               = { fg = c.hint },
		["@comment.todo"]               = "Attention",
		["@comment.warning"]            = { fg = c.warning },
		["@constant"]                   = "Constant",
		["@constant.builtin"]           = "Constant",
		["@constant.macro"]             = "Define",
		["@constructor"]                = "Special",   -- For constructor calls and definitions: = { } in Lua.
		["@diff.delta"]                 = "DiffChange",
		["@diff.minus"]                 = "DiffDelete",
		["@diff.plus"]                  = "DiffAdd",
		["@function"]                   = "Function",
		["@function.builtin"]           = { fg = c.orange, italic = true },
		["@function.call"]              = "@function",
		["@function.macro"]             = "Macro",
		["@function.method"]            = "Function",
		["@function.method.call"]       = "@function.method",
		["@keyword"]                    = "Keyword",
		["@keyword.conditional"]        = "Conditional",
		["@keyword.coroutine"]          = "@keyword",
		["@keyword.debug"]              = "Debug",
		["@keyword.directive"]          = "PreProc",
		["@keyword.directive.define"]   = "Define",
		["@keyword.exception"]          = "Exception",
		["@keyword.function"]           = "Keyword",
		["@keyword.import"]             = "Include",
		["@keyword.operator"]           = "@operator",
		["@keyword.repeat"]             = "Repeat",
		["@keyword.return"]             = "@keyword",
		["@keyword.storage"]            = "StorageClass",
		["@label"]                      = { fg = c.lightBlue }, -- For labels: `label:` in C and `:label:` in Lua.
		["@markup"]                     = "@none",
		["@markup.emphasis"]            = { italic = true },
		["@markup.environment"]         = "Macro",
		["@markup.environment.name"]    = "Type",
		["@markup.heading"]             = "Title",
		["@markup.italic"]              = { italic = true },
		["@markup.link"]                = { fg = c.green },
		["@markup.link.label"]          = { fg = c.blue },
		["@markup.link.label.symbol"]   = "Identifier",
		["@markup.link.url"]            = "Underlined",
		-- ["@markup.list"]                = { fg = c.blue5 }, -- For special punctutation that does not fall in the categories before.
		-- ["@markup.list.checked"]        = { fg = c.green1 }, -- For brackets and parens.
		-- ["@markup.list.markdown"]       = { fg = c.orange, bold = true },
		-- ["@markup.list.unchecked"]      = { fg = c.blue }, -- For brackets and parens.
		["@markup.math"]                = "Special",
		["@markup.raw"]                 = { fg = c.white },
		["@markup.raw.markdown_inline"] = { fg = c.white },
		["@markup.strikethrough"]       = { strikethrough = true },
		["@markup.strong"]              = { bold = true },
		["@markup.underline"]           = { underline = true },
		["@module"]                     = { fg = c.cyan },            -- For import and include statements.
		["@module.builtin"]             = { fg = c.purple, italic = true }, -- Variable names that are defined by the languages, like `this` or `self`.
		["@namespace.builtin"]          = "@variable.builtin",
		["@none"]                       = {},
		["@number"]                     = "Number",
		["@number.float"]               = "Float",
		["@operator"]                   = { fg = c.purple }, -- For any operator: `+`, but also `->` and `*` in C.
		["@property"]                   = { fg = c.lightBlue },
		["@punctuation.bracket"]        = { fg = c.cyan }, -- For brackets and parens.
		["@punctuation.delimiter"]      = { fg = c.lightBlue }, -- For delimiters ie: `.`
		["@punctuation.special"]        = { fg = c.lightBlue }, -- For special symbols (e.g. `{}` in string interpolation)
		["@string"]                     = "String",
		["@string.documentation"]       = { fg = c.yellow },
		["@string.escape"]              = { fg = c.purple }, -- For escape characters within a string.
		["@string.regexp"]              = { fg = c.orange }, -- For regexes.
		["@string.special.url"]         = { fg = c.yellow, underline = true },
		["@tag"]                        = { fg = c.purple },
		["@tag.attribute"]              = { fg = c.lightBlue },
		["@tag.delimiter"]              = { fg = c.blue },
		["@tag.delimiter.tsx"]          = "@tag.delimiter",
		["@tag.builtin"]                = "@tag",
		["@tag.tsx"]                    = { fg = c.yellow },
		["@text.note"]                  = "Attention",
		["@type"]                       = "Type",
		["@type.builtin"]               = { fg = c.purpleDark, italic = true },
		["@type.definition"]            = "Typedef",
		["@type.qualifier"]             = "@keyword",
		["@variable"]                   = { fg = c.white }, -- Any variable name that does not have another highlight.
		["@variable.builtin"]           = { fg = c.orange },
		["@variable.member"]            = { fg = c.lightBlue }, -- For fields.
		["@variable.parameter"]         = { fg = c.pink }, -- For parameters of a function.
		["@variable.parameter.builtin"] = { fg = c.pink }, -- For builtin parameters of a function, e.g. "..." or Smali's p[1-99]
	}

	-- for i, color in ipairs(c.rainbow) do
	--   ret["@markup.heading." .. i .. ".markdown"] = { fg = color, bold = true }
	-- end
	return ret
end

return M
