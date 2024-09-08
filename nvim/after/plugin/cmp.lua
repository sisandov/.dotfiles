local cmp = require("cmp")

cmp.setup({
  sources = {
    {name = 'luasnip' },
    {name = 'nvim_lsp' },
  },
  performance = {
	debounce = 0,
	throttle = 0,
  },
  mapping = cmp.mapping.preset.insert({
	  ['<C-k>'] = cmp.mapping.confirm({ select = true }),
  }),
})

-- vim.keymap.set("i", "<Tab>", cmp.mapping.confirm({ select = true }), {})
