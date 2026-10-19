local colors = require('nightfall.colors').darker
local integration = require('nightfall.highlights.integrations.lualine')

local opts = require("nightfall.config").options
local background = opts.transparent and colors.none or colors.background
local set = integration.get(colors, opts)

set.normal.a = { fg = colors.lightBlue, bg = background }
set.normal.b.bg = background
set.normal.c.bg = background

set.insert.a = { fg = colors.green, bg = background }
set.insert.b.bg = background
set.insert.c.bg = background

set.visual.a = { fg = colors.white, bg = background }
set.visual.b.bg = background
set.visual.c.bg = background

set.replace.a = { fg = colors.blue, bg = background }
set.replace.b.bg = background
set.replace.c.bg = background

set.command.a = { fg = colors.orange, bg = background }
set.command.b.bg = background
set.replace.c.bg = background

return set