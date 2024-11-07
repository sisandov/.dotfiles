vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Oil)
vim.keymap.set("n", "<C-x><C-c>", ":q<CR>!", { noremap = true, silent = true })

-- Move text  chunks in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Match next under cursor
vim.keymap.set("n", "<leader>N", "#", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>n", "*", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>z", ":Focus<CR>", { noremap = true, silent = true })
