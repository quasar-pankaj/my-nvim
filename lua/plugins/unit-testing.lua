return {
  "nvim-neotest/neotest",
  dependencies = {
    "nvim-neotest/nvim-nio",
    "nvim-lua/plenary.nvim",
    "antoinemadec/FixCursorHold.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
  config = function()
    require("neotest").setup({
      adapters = {
        require("neotest-nio"),
        require("neotest-plenary")({}),
        require("neotest-gtest")({}),
        require("neotest-vim-test")({
          ignore_file_types = { "python", "vim", "lua" },
    }),
      },
    })
    require("neodev").setup({
      library = { plugins = { "neotest" }, types = true },
    })
  end,
}
