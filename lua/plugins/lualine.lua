return {
  "nvim-lualine/lualine.nvim",
  config = function()
    require("lualine").setup({
      icons_enabled = true,
      options = {
        theme = "catppuccin",
      },
    })
  end,
  requires = { 'nvim-tree/nvim-web-devicons', opt = true },
}
