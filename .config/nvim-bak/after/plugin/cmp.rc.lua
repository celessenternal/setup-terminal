local status, cmp = pcall(require, 'cmp')
if (not status) then return end
local lspkind = require 'lspkind'
local luasnip = require('luasnip')
cmp.setup({
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end
  },
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'buffer' },
    { name = "luasnip" }

  }),
  formatting = {
    format = lspkind.cmp_format({
      wirth_text = false,
      maxwidth = 50
    }
    )
  },
  mapping = {
    ['<CR>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.confirm({ select = true })
      else
        fallback()
      end
    end),

    ['<Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item({ behavior = cmp.SelectBehavior.Insert })
      elseif luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      else
        fallback()
      end
    end, { 'i', 's' }),
  },
  experimental = {
    ghost_text = {
      hl_group = 'Comment'
    }
  }
})

vim.cmd [[
  highlight! default link CmpItemKind CmpItemMenuDefault
]]

cmp.setup.cmdline({ '/', '?' }, {
  mapping = cmp.mapping.preset.cmdline(),
  sources = {
    { name = 'buffer' }
  }
})
