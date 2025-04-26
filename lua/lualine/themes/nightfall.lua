local colors = require('nightfall.colors')
return {
  normal = {
    a = {bg = colors.lightBlue, fg = colors.background1, gui = 'bold'},
    b = {bg = colors.backgroundLighter, fg = colors.lightBlue},
    c = {bg = colors.background1, fg = colors.lightBlue},
  },
  insert = {
    a = {bg = colors.text, fg = colors.background1, gui = 'bold'},
    b = {bg = colors.backgroundLighter, fg = colors.text},
    c = {bg = colors.background1, fg = colors.text},
  },
  visual = {
    a = {bg = colors.white, fg = colors.background1, gui = 'bold'},
    b = {bg = colors.backgroundLighter, fg = colors.white},
    c = {bg = colors.background1, fg = colors.white},
  },
  replace = {
    a = {bg = colors.blue, fg = colors.background1, gui = 'bold'},
    b = {bg = colors.backgroundLighter, fg = colors.blue},
    c = {bg = colors.background1, fg = colors.blue},
  },
  command = {
    a = {bg = colors.orange, fg = colors.background1, gui = 'bold'},
    b = {bg = colors.backgroundLighter, fg = colors.orange},
    c = {bg = colors.background1, fg = colors.orange},
  },
  inactive = {
    a = {bg = colors.background1, fg = colors.backgroundFloat, gui = 'bold'},
    b = {bg = colors.background1, fg = colors.lightBlue},
    c = {bg = colors.background1, fg = colors.lightBlue},
  }
}