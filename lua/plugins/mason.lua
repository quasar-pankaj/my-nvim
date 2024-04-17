return {
  {
    "williamboman/mason.nvim",
    event = "VeryLazy",
    config = function()
      require("mason").setup({
        ui = {
          border = "rounded",
          icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗",
          },
        }
      })
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = {
      "williamboman/mason.nvim",
    },
    event = "VeryLazy",
    opts = {
      ensure_installed = {
        "clangd",
        "lua_ls",
      },
      automatic_installation = true,
    },
    config = function()
      require("mason-lspconfig").setup({})
    end,
  },
}
