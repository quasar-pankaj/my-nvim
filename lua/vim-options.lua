vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.scrolloff = 999
vim.opt.clipboard = "unnamedplus"
vim.opt.mouse = "a"
vim.opt.termguicolors = true
vim.opt.wrap = false
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true
vim.opt.incsearch = true
vim.opt.updatetime = 50
vim.opt.virtualedit = "block"

vim.g.loaded_netrwPlugin = 1
vim.g.loaded_netrw = 1
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Navigate vim panes better
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
vim.wo.number = true

