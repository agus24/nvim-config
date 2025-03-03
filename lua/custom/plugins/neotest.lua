return {
  {
    'nvim-neotest/neotest',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-treesitter/nvim-treesitter',
      'antoinemadec/FixCursorHold.nvim', -- Fixes flickering in test results
    },
    config = function()
      local neotest = require 'neotest'
      neotest.setup {
        adapters = {
          require 'neotest-phpunit' {
            phpunit_cmd = function()
              return 'vendor/bin/phpunit'
            end,
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
        neotest.output.open { enter = true }
      end, { desc = 'Show test output' })
      vim.keymap.set('n', '<leader>tO', function()
        neotest.output_panel.toggle()
      end, { desc = 'Toggle output panel' })
      vim.keymap.set('n', '<leader>td', function()
        neotest.run.run { strategy = 'dap' }
      end, { desc = 'Debug nearest test' })
    end,
  },

  -- PHPUnit Adapter for neotest
  {
    'olimorris/neotest-phpunit',
    dependencies = { 'nvim-neotest/neotest' },
    config = function()
      local neotest = require 'neotest'
      neotest.setup {
        adapters = {
          require 'neotest-phpunit' {
            phpunit_cmd = function()
              return 'vendor/bin/phpunit' -- Adjust if PHPUnit is installed globally
            end,
            filter_dirs = { 'vendor' }, -- Ignore vendor directory
          },
        },
      }
    end,
  },
}
