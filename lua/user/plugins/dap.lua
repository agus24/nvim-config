return {
  {
    'mfussenegger/nvim-dap',
    dependencies = {
      'nvim-neotest/nvim-nio',
      'williamboman/mason.nvim',
      'jay-babu/mason-nvim-dap.nvim',
      'leoluz/nvim-dap-go',
      'mxsdev/nvim-dap-vscode-js',
      {
        'microsoft/vscode-js-debug',
        version = '1.x',
        build = 'npm i && npm run compile vsDebugServerBundle && mv dist out',
      },
    },
    config = function()
      local dap = require 'dap'

      require('dap-vscode-js').setup {
        debugger_path = vim.fn.stdpath 'data' .. '/lazy/vscode-js-debug',
        adapters = { 'pwa-node', 'pwa-chrome', 'pwa-msedge', 'node-terminal', 'pwa-extensionHost' },
      }

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
          program = '${workspaceFolder}',
        },
        {
          type = 'go',
          name = 'Debug Test',
          request = 'launch',
          mode = 'test',
          program = '${file}',
        },
      }

      for _, language in ipairs { 'vue', 'typescript', 'javascript' } do
        require('dap').configurations[language] = {
          {
            type = 'pwa-node',
            request = 'attach',
            processId = require('dap.utils').pick_process,
            name = 'Attach debugger to existing `node --inspect` process',
            sourceMaps = true,
            resolveSourceMapLocations = { '${workspaceFolder}/**', '!**/node_modules/**' },
            cwd = '${workspaceFolder}',
            skipFiles = { '${workspaceFolder}/node_modules/**/*.js' },
          },
          {
            type = 'pwa-chrome',
            request = 'launch',
            name = 'Launch Chrome at localhost:3000',
            url = 'http://localhost:3000',
            webRoot = '${workspaceFolder}',
            protocol = 'inspector',
            sourceMaps = true,
            userDataDir = false,
            skipFiles = { '**/node_modules/**', '**/@vite/**' },
          },
        }
      end
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
