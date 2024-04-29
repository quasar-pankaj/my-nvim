return {
  "nvim-neotest/neotest",
  dependencies = {
    "nvim-neotest/nvim-nio",
    "nvim-lua/plenary.nvim",
    "antoinemadec/FixCursorHold.nvim",
    "nvim-treesitter/nvim-treesitter",
    "alfaix/neotest-gtest",
  },
  config = function()
    require("neotest").setup({
      adapters = {
        require("neotest-gtest").setup({})
      }
    })

    --require("neotest").setup({
      --adapters = {
        --require("neotest-python")({
          --dap = { justMyCode = false },
        --}),
        --require("neotest-plenary"),
        --require("neotest-vim-test")({
          --ignore_file_types = { "python", "vim", "lua" },
        --}),
      --},
    --})

    require("neodev").setup({
      library = { plugins = { "neotest" }, types = true },
    })
  end
}
