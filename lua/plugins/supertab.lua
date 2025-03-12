return {
  -- LuaSnip
  {
    'L3MON4D3/LuaSnip',
    lazy = true, -- Carregamento preguiçoso do LuaSnip
    config = function()
      local luasnip = require 'luasnip'
    end,
  },
  -- nvim-cmp e integração com LuaSnip
  {
    'hrsh7th/nvim-cmp',
    dependencies = {
      'hrsh7th/cmp-emoji',
      'saadparwaiz1/cmp_luasnip', -- Integração do nvim-cmp com LuaSnip
    },
    lazy = true, -- Carregamento preguiçoso do nvim-cmp
    config = function()
      local cmp = require 'cmp'
      local luasnip = require 'luasnip'

      -- Função auxiliar para verificar se há palavras antes do cursor
      local has_words_before = function()
        local unpack = unpack or table.unpack -- Compatibilidade com versões mais novas do Lua
        local line, col = unpack(vim.api.nvim_win_get_cursor(0))
        return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match '%s' == nil
      end

      -- Configuração do nvim-cmp
      cmp.setup {
        snippet = {
          expand = function(args)
            luasnip.lsp_expand(args.body) -- Expande o snippet
          end,
        },
        mapping = {
          ['<C-j>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_next_item()
            elseif luasnip.expand_or_jumpable() then
              luasnip.expand_or_jump()
            elseif has_words_before() then
              cmp.complete()
            else
              fallback()
            end
          end, { 'i', 's' }),

          ['<C-k>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_prev_item()
            elseif luasnip.jumpable(-1) then
              luasnip.jump(-1)
            else
              fallback()
            end
          end, { 'i', 's' }),

          ['<Tab>'] = cmp.mapping.confirm { select = true },
        },
        sources = {
          { name = 'nvim_lsp', max_item_count = 5 },
          { name = 'luasnip', max_item_count = 5 }, -- Completar com snippets do LuaSnip
          { name = 'emoji', max_item_count = 5 }, -- Completar com emojis
        },
      }
    end,
  },
}
