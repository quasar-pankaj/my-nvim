return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup({
        auto_install = true,
        ensure_installed = {
          "bash",
          "c",
          "cpp",
          "json",
          "cmake",
          "make",
          "lua",
          "yaml",
          "comment",
          "sql",
        },
        highlight = {
          enable = true,
        },
        indent = {
          enable = true
        },
      })
    end,
    dependencies = {
      { "nvim-treesitter/nvim-treesitter-textobjects" },
      { "nvim-treesitter/nvim-treesitter-context" },
			{ "windwp/nvim-ts-autotag" },
			{ "HiPhish/rainbow-delimiters.nvim" },
			{ "JoosepAlviste/nvim-ts-context-commentstring" },
    },
  }
}
