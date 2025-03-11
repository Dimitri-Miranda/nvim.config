return {
  {
    "EdenEast/nightfox.nvim", -- lazy
    config = function()
     vim.cmd("colorscheme carbonfox")
      require("nightfox").setup({
        options = {
          transparent = true,
        },
      })
    end,
  },
}
