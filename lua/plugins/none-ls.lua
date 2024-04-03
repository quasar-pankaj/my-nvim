return {
  {
    "nvimtools/none-ls.nvim",
    config = function()
      local null_ls = require("null-ls")
      null_ls.setup({
        sources = {
          null_ls.builtins.formatting.stylua,
            null_ls.builtins.completion.spell,
            null_ls.builtins.code_actions.gitrebase,
            null_ls.builtins.code_actions.gitsigns,
            null_ls.builtins.code_actions.refactoring,
            null_ls.builtins.code_actions.ts_node_action,
            null_ls.builtins.completion.luasnip,
            null_ls.builtins.completion.tags,
            null_ls.builtins.completion.vsnip,
            null_ls.builtins.diagnostics.actionlint,
            null_ls.builtins.diagnostics.buf,
            null_ls.builtins.diagnostics.checkmake,
            null_ls.builtins.diagnostics.clazy,
            null_ls.builtins.diagnostics.cmake_lint,
            null_ls.builtins.diagnostics.codespell,
            null_ls.builtins.diagnostics.commitlint,
            null_ls.builtins.diagnostics.cppcheck,
            null_ls.builtins.diagnostics.dotenv_linter,
            null_ls.builtins.diagnostics.gccdiag,
            null_ls.builtins.diagnostics.gitlint,
            null_ls.builtins.diagnostics.markdownlint,
            null_ls.builtins.diagnostics.selene,
            null_ls.builtins.diagnostics.stylelint,
            null_ls.builtins.diagnostics.trail_space,
            null_ls.builtins.diagnostics.trivy,
            null_ls.builtins.diagnostics.yamllint,
            null_ls.builtins.formatting.astyle,
            null_ls.builtins.formatting.clang_format,
            null_ls.builtins.formatting.cmake_format,
            null_ls.builtins.formatting.codespell,
            null_ls.builtins.formatting.mdformat,
            null_ls.builtins.formatting.uncrustify,
            null_ls.builtins.formatting.yamlfix,
            null_ls.builtins.hover.dictionary,
        },
      })

      vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
    end,
    dependencies = {
      "jay-babu/mason-null-ls.nvim",
    },
  },
  {
    "jay-babu/mason-null-ls.nvim",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      "williamboman/mason.nvim",
      "nvimtools/none-ls.nvim",
    },
  },
}
