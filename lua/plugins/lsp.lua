return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup({
        ui = {
          icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
          }
        }
      })
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "clangd", "cmake" },
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({})
      lspconfig.clangd.setup({})
      lspconfig.cmake.setup({})

      vim.api.nvim_create_autocmd("LspAttach",{
        group = vim.api.nvim_create_augroup("UserLspConfig", {}),
        callback = function(ev)
          -- Mappings.
          local opts = { buffer = ev.bufnr, noremap = true, silent = true }
          vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
          vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
          vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
          vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
          vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
          vim.keymap.set('n', '<Leader>wa', vim.lsp.buf.add_workspace_folder, opts)
          vim.keymap.set('n', '<Leader>wr', vim.lsp.buf.remove_workspace_folder, opts)
          vim.keymap.set('n', '<Leader>wl', function()
            print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
          end, opts)
          vim.keymap.set('n', '<Leader>D', vim.lsp.buf.type_definition, opts)
          vim.keymap.set('n', '<Leader>rn', vim.lsp.buf.rename, opts)
          vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
          vim.keymap.set('n', '<Leader>e', vim.diagnostic.open_float, opts)
          vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
          vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
          vim.keymap.set('n', '<Leader>q', vim.diagnostic.setloclist, opts)
          vim.keymap.set('n', '<Leader>ca', vim.lsp.buf.code_action, opts)
        end
      })
    end
  },
  {
    "p00f/clangd_extensions.nvim",
    config = function()
      require("clangd_extensions").setup({})
    end
  },
}
