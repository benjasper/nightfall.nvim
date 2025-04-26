---@class nightfall.Highlight: vim.api.keyset.highlight
---@field style? vim.api.keyset.highlight

---@alias nightfall.Highlights table<string,nightfall.Highlight|string>

---@alias nightfall.HighlightsFn fun(colors: PaletteColors, opts:nightfall.Config):nightfall.Highlights