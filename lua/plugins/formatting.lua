return {
  "stevearc/conform.nvim",
  event = { "BufReadPre", "BufNewFile" },
  opts = {},
  config = function()
    local conform = require("conform")
    conform.setup({
      formatters_by_ft = {
        lua = { "stylua" },
        cpp = { "clang-format" },
        c = { "clang-format" },
      },
      format_on_save = {
        enabled = true,
        timeout = 500,
        lsp_fallback = true,
        async = false,
      },
    })

    vim.keymap.set({ "n", "v" }, "<leader>f", function()
      return conform.format({
        async = false,
        lsp_fallback = true,
        timeout = 500,
      })
    end, { expr = true })
  end,
}
