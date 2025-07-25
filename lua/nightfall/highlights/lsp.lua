local M = {}

---@type nightfall.HighlightsFn
function M.get(c)
	return {
		["@lsp.type.boolean"]                            = "@boolean",
		["@lsp.type.builtinType"]                        = "@type.builtin",
		["@lsp.type.comment"]                            = "@comment",
		["@lsp.type.decorator"]                          = "@attribute",
		["@lsp.type.deriveHelper"]                       = "@attribute",
		["@lsp.type.enum"]                               = "@type",
		["@lsp.type.enumMember"]                         = "@constant",
		["@lsp.type.escapeSequence"]                     = "@string.escape",
		["@lsp.type.formatSpecifier"]                    = "@markup.list",
		["@lsp.type.generic"]                            = "@variable",
		["@lsp.type.interface"]                          = { fg = c.green },
		["@lsp.type.keyword"]                            = "@keyword",
		["@lsp.type.lifetime"]                           = "@keyword.storage",
		["@lsp.type.namespace"]                          = "@module",
		["@lsp.type.namespace.python"]                   = "@variable",
		["@lsp.type.number"]                             = "@number",
		["@lsp.type.operator"]                           = "@operator",
		["@lsp.type.parameter"]                          = "@variable.parameter",
		["@lsp.type.property"]                           = "@property",
		["@lsp.type.selfKeyword"]                        = "@variable.builtin",
		["@lsp.type.selfTypeKeyword"]                    = "@variable.builtin",
		["@lsp.type.string"]                             = "@string",
		["@lsp.type.typeAlias"]                          = "@type.definition",
		["@lsp.type.unresolvedReference"]                = { undercurl = true, sp = c.red },
		["@lsp.type.variable"]                           = {},       -- use treesitter styles for regular variables
		["@lsp.typemod.class.defaultLibrary"]            = "@type.builtin",
		["@lsp.typemod.class.defaultLibrary.typescript"] = "@lsp",   -- turn off for typescript
		["@lsp.typemod.class.defaultLibrary.javascript"] = "@lsp",   -- turn off for javascript
		["@lsp.typemod.enum.defaultLibrary"]             = "@type.builtin",
		["@lsp.typemod.enumMember.defaultLibrary"]       = "@variable.builtin",
		["@lsp.typemod.function.defaultLibrary"]         = "@function.builtin",
		["@lsp.typemod.keyword.async"]                   = "@keyword.coroutine",
		["@lsp.typemod.keyword.injected"]                = "@keyword",
		["@lsp.type.macro"]                              = "@function.builtin",
		["@lsp.typemod.macro.defaultLibrary"]            = "@function.builtin",
		["@lsp.typemod.method.defaultLibrary"]           = "Function",
		["@lsp.typemod.method.definition"]               = { fg = c.blue, italic = true },
		["@lsp.typemod.operator.injected"]               = "@operator",
		["@lsp.typemod.string.injected"]                 = "@string",
		["@lsp.typemod.struct.defaultLibrary"]           = "@type.builtin",
		["@lsp.typemod.type.defaultLibrary"]             = "@type.builtin",
		["@lsp.typemod.variable.callable"]               = "@function",
		["@lsp.typemod.variable.defaultLibrary"]         = "@variable.builtin",
		["@lsp.typemod.variable.defaultLibrary.go"]      = "@lsp", -- Turn off for Go to have things like, nil highlighted as orangeDark
		["@lsp.typemod.type.interface"]                  = "@lsp.type.interface",
		["@lsp.typemod.variable.injected"]               = "@variable",
		["@lsp.typemod.variable.readonly"]               = "@constant",
		["@lsp.typemod.variable.readonly.typescript"]    = "@lsp", -- Turn off for typescript const's
		["@lsp.typemod.variable.readonly.javascript"]    = "@lsp", -- Turn off for javascript const's
		["@lsp.typemod.attributeBracket"]                = "@attribute",
	}
end

return M
