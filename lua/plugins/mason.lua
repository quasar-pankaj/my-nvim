return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
  },
  config = function()
    require("mason").setup({
      ui = {
        border = "rounded",
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    })

    require("mason-lspconfig").setup({
      automatic_installation = true,
      ensure_installed = {
        "clangd",
        "lua_ls",
      },
    })

    require("lspconfig").lua_ls.setup({
      capabilities = require("cmp_nvim_lsp").default_capabilities(),
      settings = {
        Lua = {
          diagnostics = {
            globals = { "vim" },
          },
        },
      },
    })
    require("lspconfig").clangd.setup({
      capabilities = require("cmp_nvim_lsp").default_capabilities(),
    })
  end
}
