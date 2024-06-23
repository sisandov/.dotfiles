local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not (vim.uv or vim.loop).fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)


require("lazy").setup({
	{ 'tpope/vim-rsi' },
	{
		'nvim-telescope/telescope.nvim',
		tag = '0.1.6',
		-- or                              , branch = '0.1.x',
		dependencies = { 'nvim-lua/plenary.nvim' }
	},
	{ "rose-pine/neovim",                       name = "rose-pine" },
	{ "ayu-theme/ayu-vim" }, 
	{ "catppuccin/nvim" },
	{ 'stevearc/oil.nvim' },
	{ "nvim-treesitter/nvim-treesitter-context" },
	{ 'echasnovski/mini.nvim', version = false },
	{ "nvim-tree/nvim-web-devicons" },
	{ "jaredgorski/fogbell.vim" },
	{ "Lokaltog/vim-monotone" },
	{ "mcchrish/zenbones.nvim" },
	{ "ntk148v/komau.vim" },
	{ "sainnhe/gruvbox-material" },
	{ "f-person/git-blame.nvim" },
	{ "folke/tokyonight.nvim" },
	{ "windwp/nvim-ts-autotag" },
	{ "theprimeagen/harpoon" },
	{ 'm4xshen/autoclose.nvim' },
	{ 'akinsho/toggleterm.nvim',                version = "*",     config = true },
	{
		"iamcco/markdown-preview.nvim",
		cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
		ft = { "markdown" },
		build = function() vim.fn["mkdp#util#install"]() end,
	},
	{ "mbbill/undotree" },
	{ "tpope/vim-surround" },
	{
		"NeogitOrg/neogit",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"sindrets/diffview.nvim",
		},
		config = true
	},
	{ 'williamboman/mason.nvim' },
	{ 'williamboman/mason-lspconfig.nvim' },
	{ 'VonHeikemen/lsp-zero.nvim',        branch = 'v3.x' },
	{ 'neovim/nvim-lspconfig' },
	{ 'hrsh7th/cmp-nvim-lsp' },
	{ 'hrsh7th/nvim-cmp' },
	{ 'hrsh7th/cmp-buffer' },
	{ 'hrsh7th/cmp-path' },
	{ 'saadparwaiz1/cmp_luasnip' },
	{ 'L3MON4D3/LuaSnip' },
	{ 'rafamadriz/friendly-snippets' },
	{ 'hrsh7th/cmp-nvim-lua' },
	{ "nvim-treesitter/nvim-treesitter",  build = ":TSUpdate" }
})
