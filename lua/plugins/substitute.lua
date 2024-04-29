return {
  "gbprod/substitute.nvim",
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  },
  config = function()
    local subs = require("substitute")

    vim.keymap.set("n", "s", subs.operator, { noremap = true })
    vim.keymap.set("n", "ss", subs.line, { noremap = true })
    vim.keymap.set("n", "S", subs.eol, { noremap = true })
    vim.keymap.set("x", "s", subs.visual, { noremap = true })
  end
}
