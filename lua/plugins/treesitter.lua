return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      -- ensure_installed = "all",
      ensure_installed = { "c", "cpp", "lua", "cmake" },
      sync_install = false,
      highlight = {
        enable = true,
      },
      indent = {
        enable = true,
      },
      autopairs = {
        enable = true,
      },
      context_commentstring = {
        enable = true,
        enable_autocmd = false,
      },
    })
  end,
}
