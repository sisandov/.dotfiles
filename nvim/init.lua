require("luafiles")

-- disable swap
vim.opt.swapfile = false

if vim.g.neovide then
	vim.g.neovide_cursor_animation_length = 0
	vim.o.guifont = "IosevkaTerm Nerd Font:h16"
end

-- Allow interacting with system clipboard
vim.keymap.set({ 'n', 'v' }, '<leader>y', '"+y')
vim.keymap.set({ 'n', 'v' }, '<leader>Y', '"+Y')
vim.keymap.set({ 'n', 'v' }, '<leader>d', '"+d')
vim.keymap.set({ 'n', 'v' }, '<leader>D', '"+D')
vim.keymap.set('n', '<leader>p', '"*p')
vim.keymap.set('n', '<leader>P', '"*P')

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
vim.cmd("colorscheme tokyonight-day")
