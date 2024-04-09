return {
  "nvim-neotest/neotest",
  dependencies = {
    "nvim-neotest/nvim-nio",
    "nvim-lua/plenary.nvim",
    "antoinemadec/FixCursorHold.nvim",
    "nvim-treesitter/nvim-treesitter",
    "nvim-neotest/neotest-plenary",
    "alfaix/neotest-gtest",
  },
  config = function()
    require("neotest").setup({
      adapters = {
        require("neotest-plenary"),
        require("neotest-gtest"),
      },
    })
    require("neodev").setup({
      library = { plugins = { "neotest" }, types = true },
    })
  end,
}
