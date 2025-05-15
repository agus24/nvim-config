return {
  {
    'nvim-neotest/neotest',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-treesitter/nvim-treesitter',
      'antoinemadec/FixCursorHold.nvim', -- Fixes flickering in test results
      'nvim-neotest/neotest-go',
    },
    opts = {
      status = { virtual_text = true },
      output = { open_on_run = true },
    },
    config = function()
      local neotest_ns = vim.api.nvim_create_namespace 'neotest'
      local neotest = require 'neotest'
      neotest.setup {
        adapters = {
          require 'neotest-go' {
            xperimental = {
              test_table = true,
            },
            args = { '-v' },
          },
        },
      }

      vim.keymap.set('n', '<leader>tt', function()
        neotest.run.run()
      end, { desc = 'Run nearest test' })
      vim.keymap.set('n', '<leader>tf', function()
        neotest.run.run(vim.fn.expand '%')
      end, { desc = 'Run test file' })
      vim.keymap.set('n', '<leader>ts', function()
        neotest.summary.toggle()
      end, { desc = 'Toggle test summary' })
      vim.keymap.set('n', '<leader>to', function()
        neotest.output.open { enter = true, short = true }
      end, { desc = 'Show test output' })
      vim.keymap.set('n', '<leader>tO', function()
        neotest.output_panel.toggle()
      end, { desc = 'Toggle output panel' })
      vim.keymap.set('n', '<leader>td', function()
        neotest.run.run { strategy = 'dap' }
      end, { desc = 'Debug nearest test' })
    end,
  },
}
