return {
  {
    'mfussenegger/nvim-dap',
    dependencies = {
      'nvim-neotest/nvim-nio',
      'williamboman/mason.nvim',
      'jay-babu/mason-nvim-dap.nvim',
      'leoluz/nvim-dap-go',
    },
    config = function()
      local dap = require 'dap'

      -- PHP Adapter for Xdebug
      dap.adapters.php = {
        type = 'executable',
        command = 'php-debug-adapter',
      }

      dap.configurations.php = {
        {
          type = 'php',
          request = 'launch',
          name = 'Listen for Xdebug',
          port = 9003,
          log = true,
        },
      }

      require('dap-go').setup {
        delve = {
          path = 'dlv',
          initialize_timeout_sec = 20,
          -- detached = vim.fn.has 'win32' == 0,
        },
      }

      dap.configurations.go = {
        {
          type = 'go',
          name = 'Debug',
          request = 'launch',
          program = '${file}',
        },
        {
          type = 'go',
          name = 'Debug Test',
          request = 'launch',
          mode = 'test',
          program = '${file}',
        },
      }
    end,
  },
  {
    'rcarriga/nvim-dap-ui',
    dependencies = { 'mfussenegger/nvim-dap' },
    config = function()
      local dap, dapui = require 'dap', require 'dapui'

      dapui.setup()

      dap.listeners.after.event_initialized['dapui_config'] = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated['dapui_config'] = function()
        dapui.close()
      end
      dap.listeners.before.event_exited['dapui_config'] = function()
        dapui.close()
      end

      dap.listeners.before.event_initialized['restore_leader'] = function()
        vim.g.mapleader = ' '
      end
      dap.listeners.before.event_terminated['restore_leader'] = function()
        vim.g.mapleader = ' '
      end
      dap.listeners.before.event_exited['restore_leader'] = function()
        vim.g.mapleader = ' '
      end
    end,
  },
  {
    'theHamsta/nvim-dap-virtual-text',
    dependencies = { 'mfussenegger/nvim-dap' },
    config = function()
      require('nvim-dap-virtual-text').setup()
    end,
  },
}
