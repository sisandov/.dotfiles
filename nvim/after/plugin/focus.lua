local f = require("focus")

f.setup({
	"cdmill/focus.nvim",
	cmd = { "Focus", "Zen", "Narrow" },
	auto_zen = true,
	window = {
		backdrop = 1,
		width = 86,
		height = 0.8,
		options = {},
	},
})

