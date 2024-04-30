# My Config for neovim

This project aims to build a config for C++ with CMake using CMake-tools and Flutter using flutter-tools. The primary motivation for this project is to build an IDE that is not bloated and yet has everything that a C++ and Flutter developer will need. So far the basic UI Related stuff has been setup and works properly. TreeSitter, LSP, DAP, etc are still in progress. Most importantly it aims to be a starting point of your own journey into the world of NeoVim configuration.

## Installation

Fork this repository and run the following commands replacing the path with your own -
eg. Replace quasar-pankaj with your username. If you have forked with a different repo name replace that as well. Your command will look similar to the following:-

``` Bash
git clone https://github.com/quasar-pankaj/my-nvim.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim && nvim
```

## Plugins used and proposed

Following list shows what has been implemented and what is pending. The ones left out are the ones I am not sure if I should include.

### UI Related

- [x] [Lazy.nvim](https://github.com/folke/lazy.nvim)
- [x] [Telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [ ] [Which-key.nvim](https://github.com/folke/which-key.nvim)
- [x] [Nvim-dap-ui](https://github.com/rcarriga/nvim-dap-ui)
- [x] [Neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim)
- [x] [Dressing.nvim](https://github.com/stevearc/dressing.nvim)
- [x] [Bufferline.nvim](https://github.com/akinsho/bufferline.nvim)
- [x] [Lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- [ ] [Toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim)
- [x] [catppuccin](https://github.com/catppuccin/nvim)
- [x] [neodev.nvim](https://github.com/folke/neodev.nvim)
- [ ] [noice.nvim](https://github.com/folke/noice.nvim)
- [ ] [vim-maximizer](https://github.com/szw/vim-maximizer)

### LSP Related

- [x] [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [x] [cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
- [x] [mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)
- [x] [mason.nvim](https://github.com/williamboman/mason.nvim)
- [ ] [lsp-status.nvim](https://github.com/nvim-lua/lsp-status.nvim)
- [x] [trouble.nvim](https://github.com/folke/trouble.nvim)

### Code Formatting Related

- [x] [conform.nvim](https://github.com/stevearc/conform.nvim)
- [ ] [none-ls.nvim](https://github.com/nvimtools/none-ls.nvim)

### Code Linting Related

- [x] [nvim-lint](https://github.com/mfussenegger/nvim-lint)
- [ ] [none-ls.nvim](https://github.com/nvimtools/none-ls.nvim)


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
- [x] [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [x] [luasnip](https://github.com/L3MON4D3/LuaSnip)
- [x] [cmp-luasnip](https://github.com/saadparwaiz1/cmp_luasnip)
- [x] [friendly-snippets](https://github.com/rafamadriz/friendly-snippets)

### Code Refactoring Related

- [x] [refactoring.nvim](https://github.com/ThePrimeagen/refactoring.nvim)

### Editing Related

- [x] [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
- [x] [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [x] [Comment.nvim](https://github.com/numToStr/Comment.nvim)
- [x] [AutoSave.nvim](https://github.com/Pocco81/AutoSave.nvim)
- [ ] [nvim-ts-rainbow2](https://github.com/HiPhish/nvim-ts-rainbow2)
- [ ] [vim-visual-multi](https://github.com/mg979/vim-visual-multi)
- [ ] [rainbow-parentheses.nvim](https://github.com/kien/rainbow_parentheses.vim)
- [ ] [leap.nvim](https://github.com/ggandor/leap.nvim)
- [x] [illuminate.nvim](https://github.com/RRethy/vim-illuminate)
- [x] [nvim-autopairs](https://github.com/windwp/nvim-autopairs)
- [x] [todo-comments](https://github.com/folke/todo-comments.nvim)
- [x] [trouble](https://github.com/folke/trouble.nvim)
- [x] [nvim-surround](https://github.com/kylechui/nvim-surround)
- [x] [substitute](https://github.com/gbprod/substitute.nvim)

### C++ and CMake Related

- [x] [CMake-tools.nvim](https://github.com/Civitasv/cmake-tools.nvim)

### Git Related

- [ ] [vim-fugitive](https://github.com/tpope/vim-fugitive)
- [ ] [gh.nvim](https://github.com/ldelossa/gh.nvim)
- [ ] [gh-actions.nvim](https://github.com/ldelossa/gh-actions.nvim)
- [ ] [gist-nvim](https://github.com/mattn/gist-vim)
- [x] [octo.nvim](https://github.com/pwntester/octo.nvim)
- [ ] [lazygit](https://github.com/kdheepak/lazygit.nvim)

### Debugging Related

- [x] [nvim-dap](https://github.com/mfussenegger/nvim-dap)
- [x] [nvim-dap-ui](https://github.com/rcarriga/nvim-dap-ui)
- [ ] [telescope-dap](https://github.com/nvim-telescope/telescope-dap.nvim)
- [ ] [cmp-dap](https://github.com/rcarriga/cmp-dap)
- [ ] [nvim-dap-repl-highlights](https://github.com/LiadOz/nvim-dap-repl-highlights)
- [ ] [mason-nvim-dap](https://github.com/jay-babu/mason-nvim-dap.nvim)

### Flutter Related

- [x] [flutter-tools.nvim](https://github.com/akinsho/flutter-tools.nvim)

### Unit Testing Related

- [x] [neotest](https://github.com/nvim-neotest/neotest)

### AI Related

- [x] [codeium.nvim](https://github.com/Exafunction/codeium.vim)

### Others

- [x] [plenary.nvim](https://github.com/nvim-lua/plenary.nvim)
- [x] [telescope-ui-select.nvim](https://github.com/nvim-telescope/telescope-ui-select.nvim)
- [ ] [vim-matchup](https://github.com/andymass/vim-matchup)
- [ ] [vim-asterisk](https://github.com/haya14busa/vim-asterisk)
- [ ] [vim-easy-align](https://github.com/junegunn/vim-easy-align)

## Key Bindings


