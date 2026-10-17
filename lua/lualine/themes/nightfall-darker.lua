local colors = require('nightfall.colors').darker
local integration = require('nightfall.highlights.integrations.lualine')

local set = integration.get(colors)

set.normal.a = { fg = colors.lightBlue, bg = colors.background }
set.normal.b.bg = colors.background
set.normal.c.bg = colors.background

set.insert.a = { fg = colors.green, bg = colors.background }
set.insert.b.bg = colors.background
set.insert.c.bg = colors.background

set.visual.a = { fg = colors.white, bg = colors.background }
set.visual.b.bg = colors.background
set.visual.c.bg = colors.background

set.replace.a = { fg = colors.blue, bg = colors.background }
set.replace.b.bg = colors.background
set.replace.c.bg = colors.background

set.command.a = { fg = colors.orange, bg = colors.background }
set.command.b.bg = colors.background
set.replace.c.bg = colors.background

return set