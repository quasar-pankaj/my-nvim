return {
  "mfussenegger/nvim-lint",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local lint = require("lint")
    lint.linters_by_ft = {
      c = { "clangtidy" },
      cpp = { "clangtidy" },
      lua = { "luacheck" },
    }

    local lint_augroup = vim.api.nvim_create_augroup("Linter", { clear = true })
    vim.api.nvim_create_autocmd({ "BufWritePost", "BufEnter", "InsertLeave" }, {
      group = lint_augroup,
      callback = function()
        lint.try_lint()
      end,
    })

    vim.keymap.set("n", "<leader>l", function()
      lint.try_lint()
    end, { desc = "Linter" })
  end,
}
