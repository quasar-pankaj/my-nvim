return {
  {
    "folke/neodev.nvim",
    opts = {},
    config = function()
      require("neodev").setup({})
    end
  },
  {
    "mfussenegger/nvim-dap",
    event = { "BufReadPre", "BufNew", },
    dependencies = {
      "rcarriga/nvim-dap-ui",
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

      dap.adapters.lldb = {
        type = 'executable',
        command = '/usr/bin/lldb-vscode', -- adjust as needed, must be absolute path
        name = 'lldb'
      }
      dap.configurations.cpp = {
        {
          name = 'Launch',
          type = 'lldb',
          request = 'launch',
          program = function()
            return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
          end,
          cwd = '${workspaceFolder}',
          stopOnEntry = false,
          args = {},

          -- 💀
          -- if you change `runInTerminal` to true, you might need to change the yama/ptrace_scope setting:
          --
          --    echo 0 | sudo tee /proc/sys/kernel/yama/ptrace_scope
          --
          -- Otherwise you might get the following error:
          --
          --    Error on launch: Failed to attach to the target process
          --
          -- But you should be aware of the implications:
          -- https://www.kernel.org/doc/html/latest/admin-guide/LSM/Yama.html
          -- runInTerminal = false,
        },
      }

      local widgets = require("dap.ui.widgets")

      vim.keymap.set('n', '<F5>', function() dap.continue() end)
      vim.keymap.set('n', '<F10>', function() dap.step_over() end)
      vim.keymap.set('n', '<F11>', function() dap.step_into() end)
      vim.keymap.set('n', '<F12>', function() dap.step_out() end)
      vim.keymap.set('n', '<Leader>b', function() dap.toggle_breakpoint() end)
      vim.keymap.set('n', '<Leader>B', function() dap.set_breakpoint() end)
      vim.keymap.set('n', '<Leader>lp',
        function() dap.set_breakpoint(nil, nil, vim.fn.input('Log point message: ')) end)
      vim.keymap.set('n', '<Leader>dr', function() dap.repl.open() end)
      vim.keymap.set('n', '<Leader>dl', function() dap.run_last() end)
      vim.keymap.set({ 'n', 'v' }, '<Leader>dh', function()
        widgets.hover()
      end)
      vim.keymap.set({ 'n', 'v' }, '<Leader>dp', function()
        widgets.preview()
      end)
      vim.keymap.set('n', '<Leader>df', function()
        widgets.centered_float(widgets.frames)
      end)
      vim.keymap.set('n', '<Leader>ds', function()
        widgets.centered_float(widgets.scopes)
      end)
    end,
  },
}
