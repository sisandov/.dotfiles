require("luafiles")

-- disable swap
vim.opt.swapfile = false

if vim.g.neovide then
	vim.g.neovide_cursor_animation_length = 0
end

-- Allow interacting with system clipboard
vim.keymap.set({ 'n', 'v' }, '<leader>y', '"+y')
vim.keymap.set({ 'n', 'v' }, '<leader>Y', '"+Y')
vim.keymap.set({ 'n', 'v' }, '<leader>d', '"+d')
vim.keymap.set({ 'n', 'v' }, '<leader>D', '"+D')
vim.keymap.set('n', '<leader>[', '"*p')
vim.keymap.set('n', '<leader>{', '"*P')

-- Emacs window bindings
vim.api.nvim_set_keymap('n', '<C-x>3', ':vsplit<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-x>2', ':split<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-x>1', ':only<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-x>0', ':q<CR>', { noremap = true })

-- Very frequent typo
vim.api.nvim_create_user_command('WQ', 'wq', {})
vim.api.nvim_create_user_command('Wq', 'wq', {})
vim.api.nvim_create_user_command('W', 'w', {})
vim.api.nvim_create_user_command('Qa', 'qa', {})
vim.api.nvim_create_user_command('Q', 'q', {})

vim.opt.guicursor = ''
-- Theme
vim.o.termguicolors = true
vim.cmd("let ayucolor=\"dark\"")
vim.cmd("colorscheme ayu")

-- Tabs
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

-- Line wrap
vim.wo.wrap = false

-- Keep context when scrolling
vim.opt.scrolloff = 8

vim.opt.cursorlineopt = "number"
vim.opt.number = true
-- vim.opt.signcolumn = "number"
