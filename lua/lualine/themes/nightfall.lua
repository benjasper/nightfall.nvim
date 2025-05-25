local colors = require('nightfall.colors')
return {
	normal = {
		a = { bg = colors.lightBlue, fg = colors.background, gui = 'bold' },
		b = { bg = colors.selection },
		c = { bg = colors.background },
	},
	insert = {
		a = { bg = colors.green, fg = colors.background, gui = 'bold' },
		b = { bg = colors.selection },
		c = { bg = colors.background },
	},
	visual = {
		a = { bg = colors.white, fg = colors.background, gui = 'bold' },
		b = { bg = colors.selection },
		c = { bg = colors.background },
	},
	replace = {
		a = { bg = colors.blue, fg = colors.background, gui = 'bold' },
		b = { bg = colors.selection },
		c = { bg = colors.background },
	},
	command = {
		a = { bg = colors.orange, fg = colors.background, gui = 'bold' },
		b = { bg = colors.selection },
		c = { bg = colors.background },
	},
	inactive = {
		a = { bg = colors.background, fg = colors.background, gui = 'bold' },
		b = { bg = colors.background },
		c = { bg = colors.background },
	}
}
