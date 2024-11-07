local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
	local opts = { buffer = bufnr, remap = false }

	vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
	vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
	vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
	vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
	vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
	vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
	vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
	vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
	vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
	vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
	vim.keymap.set("n", "<leader>li", function() vim.lsp.buf.format() end, opts)
end)

-- to learn how to use mason.nvim with lsp-zero
-- read this: https://github.com/VonHeikemen/lsp-zero.nvim/blob/v3.x/doc/md/guides/integrate-with-mason-nvim.md
local lspconfig = require('lspconfig')
require('mason').setup({})
require('mason-lspconfig').setup({
	ensure_installed = { 'eslint', 'bashls', 'rust_analyzer', 'clangd', 'gopls', 'ts_ls', 'pyright', 'rubocop', 'lua_ls', 'html' }
})

require('mason-lspconfig').setup_handlers({
	function(server)
		local opts = {}
		if server == "ts_ls" then
			opts.init_options = {
				plugins = {
					{
						name = "@vue/typescript-plugin",
						location = "/home/sakuya/.asdf/installs/nodejs/23.1.0/lib/node_modules/@vue/typescript-plugin",
						languages = { "javascript", "typescript", "vue" },
					},
				},
			}
			opts.filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue" }
		end

		if server == "volar" then
			opts.init_options = {
				vue = {
					hybridMode = true,
				},
			}
		end
		lspconfig[server].setup(opts)
	end,
})
