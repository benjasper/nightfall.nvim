local colors = require('nightfall.colors')
return {
  normal = {
    a = {bg = colors.lightBlue, fg = colors.background, gui = 'bold'},
    b = {bg = colors.selection, fg = colors.lightBlue},
    c = {bg = colors.background, fg = colors.lightBlue},
  },
  insert = {
    a = {bg = colors.green, fg = colors.background, gui = 'bold'},
    b = {bg = colors.selection, fg = colors.green},
    c = {bg = colors.background, fg = colors.green},
  },
  visual = {
    a = {bg = colors.white, fg = colors.background, gui = 'bold'},
    b = {bg = colors.selection, fg = colors.white},
    c = {bg = colors.background, fg = colors.white},
  },
  replace = {
    a = {bg = colors.blue, fg = colors.background, gui = 'bold'},
    b = {bg = colors.selection, fg = colors.blue},
    c = {bg = colors.background, fg = colors.blue},
  },
  command = {
    a = {bg = colors.orange, fg = colors.background, gui = 'bold'},
    b = {bg = colors.selection, fg = colors.orange},
    c = {bg = colors.background, fg = colors.orange},
  },
  inactive = {
    a = {bg = colors.background, fg = colors.background, gui = 'bold'},
    b = {bg = colors.background, fg = colors.lightBlue},
    c = {bg = colors.background, fg = colors.lightBlue},
  }
}
