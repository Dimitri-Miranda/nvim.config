return {
  {
    'EdenEast/nightfox.nvim', -- lazy
    config = function()
      require('nightfox').setup {
        options = {
          transparent = true,
        },
      }
      vim.cmd 'colorscheme carbonfox'
    end,
  },
}
