# My Config for neovim

This project aims to build a config for C++ with CMake using CMake-tools and Flutter using flutter-tools. The primary motivation for this project is to build an IDE that is not bloated and yet has everything that a C++ and Flutter developer will need. So far the basic UI Related stuff has been setup and works properly. TreeSitter, LSP, DAP, etc are still in progress. Most importantly it aims to be a starting point of your own journey into the world of NeoVim configuration.

## Installation

Fork this repository and run the following commands replacing the path with your own -
eg. Replace quasar-pankaj with your username. If you have forked with a different repo name replace that as well. Your command will look similar to the following:-

``` Bash
git clone https://github.com/quasar-pankaj/my-nvim.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim && nvim
```

## Plugins used and proposed

Below list shows what has been implemented and what is pending.

### UI Related

- [x] [Lazy.nvim](https://github.com/folke/lazy.nvim)
- [x] [Telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [Which-key.nvim](https://github.com/folke/which-key.nvim)
- [x] [Nvim-dap-ui](https://github.com/rcarriga/nvim-dap-ui)
- [x] [Neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim)
- [ ] [Dressing.nvim](https://github.com/stevearc/dressing.nvim)
- [x] [Bufferline.nvim](https://github.com/akinsho/bufferline.nvim)
- [x] [Lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- [ ] [Toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim)
- [x] [catppuccin](https://github.com/catppuccin/nvim)
- [ ] [neodev.nvim](https://github.com/folke/neodev.nvim)
- [x] [noice.nvim](https://github.com/folke/noice.nvim)

### LSP Related

- [ ] [lsp-zero.nvim](https://github.com/VonHeikemen/lsp-zero.nvim)
- [x] [nvim-lsp](https://github.com/neovim/nvim-lsp)
- [x] [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [x] [cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
- [x] [mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)
- [x] [mason.nvim](https://github.com/williamboman/mason.nvim)
- [ ] [lsp-status.nvim](https://github.com/nvim-lua/lsp-status.nvim)
- [ ] [trouble.nvim](https://github.com/folke/trouble.nvim)

### Code Formatting Related

- [ ] [conform.nvim](https://github.com/stevearc/conform.nvim)
- [x] [none-ls.nvim](https://github.com/nvimtools/none-ls.nvim)

### Code Linting Related

- [ ] [nvim-lint](https://github.com/mfussenegger/nvim-lint)
- [x] [none-ls.nvim](https://github.com/nvimtools/none-ls.nvim)


### Syntax Highlighting Related

- [x] [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)

### Code Completion Related

- [ ] [lsp-zero.nvim](https://github.com/VonHeikemen/lsp-zero.nvim)
- [x] [cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
- [x] [cmp-buffer](https://github.com/hrsh7th/cmp-buffer)
- [x] [cmp-path](https://github.com/hrsh7th/cmp-path)
- [x] [cmp-nvim-lua](https://github.com/hrsh7th/cmp-nvim-lua)
- [ ] [cmp-cmdline](https://github.com/hrsh7th/cmp-cmdline)
- [ ] [cmp-look](https://github.com/octaltree/cmp-look)

### Code Refactoring Related

- [ ] [refactoring.nvim](https://github.com/ThePrimeagen/refactoring.nvim)

### Editing Related

- [ ] [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
- [x] [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [ ] [Comment.nvim](https://github.com/numToStr/Comment.nvim)
- [ ] [AutoSave.nvim](https://github.com/Pocco81/AutoSave.nvim)
- [ ] [nvim-ts-rainbow](https://github.com/p00f/nvim-ts-rainbow)
- [ ] [vim-visual-multi](https://github.com/mg979/vim-visual-multi)
- [ ] [vim-surround](https://github.com/tpope/vim-surround)
- [ ] [rainbow-parentheses.nvim](https://github.com/kien/rainbow_parentheses.vim)
- [ ] [leap.nvim](https://github.com/ggandor/leap.nvim)
- [ ] [illuminate.nvim](https://github.com/RRethy/vim-illuminate)
- [ ] [nvim-autopairs](https://github.com/windwp/nvim-autopairs)
### C++ and CMake Related

- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [CMake-tools.nvim](https://github.com/simrat39/cmp-cmake)

### Git Related

- [vim-fugitive](https://github.com/tpope/vim-fugitive)

### Debugging Related

- [nvim-dap](https://github.com/mfussenegger/nvim-dap)
- [nvim-dap-ui](https://github.com/rcarriga/nvim-dap-ui)

### Flutter Related

- [flutter-tools.nvim](https://github.com/akinsho/flutter-tools.nvim)

### Unit Testing Related

- [neotest](https://github.com/nvim-neotest/neotest)

### AI Related

- [codeium.nvim](https://github.com/Exafunction/codeium.vim)

### Others

- [plenary.nvim](https://github.com/nvim-lua/plenary.nvim)
- [telescope-ui-select.nvim](https://github.com/nvim-telescope/telescope-ui-select.nvim)
- [vim-surround](https://github.com/tpope/vim-surround)
- [vim-matchup](https://github.com/andymass/vim-matchup)
- [vim-commentary](https://github.com/tpope/vim-commentary)
- [vim-visual-multi](https://github.com/mg979/vim-visual-multi)
- [vim-asterisk](https://github.com/haya14busa/vim-asterisk)
- [vim-easy-align](https://github.com/junegunn/vim-easy-align)
- [vim-which-key](https://github.com/liuchengxu/vim-which-key)

## Key Bindings


