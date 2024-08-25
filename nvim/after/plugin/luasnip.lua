local ls = require "luasnip"
ls.config.set_config {
	history = true,

	updateevents = "TextChanged, TextChangedI",

	enable_autosnippets = true,
}

vim.keymap.set({ "i", "s" }, "<c-k>", function()
	if ls.expand_or_jumpable() then
		ls.expand_or_jump()
	end
end, { silent = true })

vim.keymap.set({ "i", "s" }, "<c-j>", function()
	if ls.jumpable() then
		ls.jump(-1)
	end
end, { silent = true })

vim.keymap.set({ "i" }, "<c-l>", function()
	if ls.choice_active() then
		ls.change_choice(1)
	end
end, { silent = true })

vim.keymap.set("n", "<leader><leader>s", "<cmd>source ~/.config/nvim/after/plugin/luasnip.lua<CR>")

require('luasnip.loaders.from_vscode').lazy_load()
require 'luasnip'.filetype_extend("ruby", { "rails" })
