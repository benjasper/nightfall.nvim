local colors = require('nightfall.colors')
return {
  normal = {
    a = {bg = colors.lightBlue, fg = colors.background, gui = 'bold'},
    b = {bg = colors.backgroundLighter, fg = colors.lightBlue},
    c = {bg = colors.background, fg = colors.lightBlue},
  },
  insert = {
    a = {bg = colors.text, fg = colors.background, gui = 'bold'},
    b = {bg = colors.backgroundLighter, fg = colors.text},
    c = {bg = colors.background, fg = colors.text},
  },
  visual = {
    a = {bg = colors.white, fg = colors.background, gui = 'bold'},
    b = {bg = colors.backgroundLighter, fg = colors.white},
    c = {bg = colors.background, fg = colors.white},
  },
  replace = {
    a = {bg = colors.blue, fg = colors.background, gui = 'bold'},
    b = {bg = colors.backgroundLighter, fg = colors.blue},
    c = {bg = colors.background, fg = colors.blue},
  },
  command = {
    a = {bg = colors.orange, fg = colors.background, gui = 'bold'},
    b = {bg = colors.backgroundLighter, fg = colors.orange},
    c = {bg = colors.background, fg = colors.orange},
  },
  inactive = {
    a = {bg = colors.background, fg = colors.background, gui = 'bold'},
    b = {bg = colors.background, fg = colors.lightBlue},
    c = {bg = colors.background, fg = colors.lightBlue},
  }
}
