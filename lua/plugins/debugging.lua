return {
  {
    "folke/neodev.nvim",
    opts = {},
    config = function()
      -- IMPORTANT: make sure to setup neodev BEFORE lspconfig
      require("neodev").setup({
        -- add any options here, or leave empty to use the default settings
      })

      -- then setup your lsp server as usual
      local lspconfig = require('lspconfig')

      -- example to setup lua_ls and enable call snippets
      lspconfig.lua_ls.setup({
        settings = {
          Lua = {
            completion = {
              callSnippet = "Replace"
            }
          }
        }
      })
    end,
  },
  {
  "rcarriga/nvim-dap-ui",
  dependencies = {
    "mfussenegger/nvim-dap",
    "nvim-neotest/nvim-nio",
  },
  config = function()
    local dap, dapui = require("dap"), require("dapui")

    dapui.setup()

    dap.listeners.before.attach.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.launch.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.event_terminated.dapui_config = function()
      dapui.close()
    end
    dap.listeners.before.event_exited.dapui_config = function()
      dapui.close()
    end

    require("neodev").setup({
      library = { plugins = { "nvim-dap-ui" }, types = true },
    })

    vim.keymap.set("n", "<leader>dt", dap.toggle_breakpoint, {})
    vim.keymap.set("n", "<leader>dc", dap.continue, {})
    vim.keymap.set("n", "<leader>ds", dap.step_over, {})
    vim.keymap.set("n", "<leader>di", dap.step_into, {})
    vim.keymap.set("n", "<leader>do", dap.step_out, {})

  end,
  },
}
