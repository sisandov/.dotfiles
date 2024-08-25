local cmp = require("cmp")

cmp.setup({
  sources = {
    {name = 'luasnip' },
    {name = 'nvim_lsp' },
  },
  mapping = cmp.mapping.preset.insert({}),
  snippet = {
    expand = function(args)
      vim.snippet.expand(args.body)
	  require'luasnip'.lsp_expand(args.body)
    end,
  },
})

-- vim.keymap.set("i", "<Tab>", cmp.mapping.confirm({ select = true }), {})
