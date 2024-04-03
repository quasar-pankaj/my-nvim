return {
  "akinsho/bufferline.nvim",
  version = "v3.*",
  config = function()
    require("bufferline").setup({
      options = {
        offsets = {
          {
            filetype = "NvimTree",
            text = "File Explorer",
            highlight = "Directory",
            text_align = "left",
          },
        },
      },
    })
  end,
  requires = "nvim-tree/nvim-web-devicons",
  event = "VeryLazy",
}
