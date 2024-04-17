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
      "WhoIsSethDaniel/mason-tool-installer.nvim",
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

      require("mason-tool-installer").setup({
        ensure_installed = {
          "clangd",
          "lua_ls",
          "clang-format",
          "stylua",
          "clangtidy",
          "luacheck"
        },
      })
    end,
  },
}
