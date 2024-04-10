return {
  "tpope/vim-fugitive",
  cmd = { "Git", "Gdiffsplit", "Gvdiffsplit", "Gread", "Gwrite", "Ggrep", "GMove", "GDelete", "GBrowse", "GRemove", "GRename", "Glgrep", "Gedit" },
  config = function()
    vim.keymap.set("n", "<leader>gs", vim.cmd.Git)
  end,
  dependencies = { "tpope/vim-rhubarb" },
}
