require("oil").setup({
	view_options = {
		-- Show files and directories that start with "."
		show_hidden = true,
	},
	columns = {
		"icon",
		"permissions",
		"size",
		"mtime",
	},
})
