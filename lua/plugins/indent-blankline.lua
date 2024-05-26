return {
  "lukas-reineke/indent-blankline.nvim",
  event = { "BufReadPre", "BufEnter" },
  main = "ibl",
  opts = {},
  config = function ()
    require("ibl").setup({})
  end
}
