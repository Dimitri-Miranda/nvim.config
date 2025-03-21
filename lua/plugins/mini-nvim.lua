return { -- Collection of various small independent plugins/modules
  'echasnovski/mini.nvim',
  config = function()
    -- Better Around/Inside textobjects
    require('mini.ai').setup { n_lines = 500 }

    require('mini.pairs').setup()

    require('mini.completion').setup()
    -- Remap of selection
    vim.api.nvim_set_keymap('i', '<Tab>', 'pumvisible() ? "\\<Space>" : "\\<Tab>"', { expr = true, noremap = true })
    vim.api.nvim_set_keymap('i', '<C-j>', '<C-n>', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('i', '<C-k>', '<C-p>', { noremap = true, silent = true })

    require('mini.icons').setup()

    require('mini.tabline').setup()
    -- Buffer navegation remap
    vim.keymap.set('n', '<C-l>', ':silent bnext<CR>')
    vim.keymap.set('n', '<C-h>', ':silent bprev<CR>')

    -- local hipatterns = require 'mini.hipatterns'
    -- hipatterns.setup {
    --   highlighters = {
    --     hex_color = hipatterns.gen_highlighter.hex_color(),
    --   },
    -- }

    -- ... and there is more!
    --  Check out: https://github.com/echasnovski/mini.nvim
  end,
}
