return {
  {
    'zbirenbaum/copilot.lua',
    dependencies = {
      'copilotlsp-nvim/copilot-lsp', -- (optional) for NES functionality
    },
    cmd = 'Copilot',
    event = 'InsertEnter',
    config = function()
      require('copilot').setup {
        suggestion = {
          enabled = true,
          auto_trigger = true,
          hide_during_completion = false,
          debounce = 25,
          keymap = {
            accept = false,
            accept_word = false,
            accept_line = '<C-U>',
            next = false,
            prev = false,
            dismiss = false,
          },
        },
        panel = {
          enabled = true,
          auto_refresh = false,
          keymap = {
            jump_prev = '[[',
            jump_next = ']]',
            accept = '<CR>',
            refresh = 'gr',
            open = '<C-P>',
          },
          layout = {
            position = 'right',
          },
        },
        nes = {
          enabled = true,
          keymap = {
            accept_and_goto = '<leader>gp',
            accept = false,
            dismiss = '<Esc>',
          },
        },
      }
    end,
  },
  {
    'CopilotC-Nvim/CopilotChat.nvim',
    dependencies = {
      { 'nvim-lua/plenary.nvim', branch = 'master' },
    },
    build = 'make tiktoken',
    opts = {
      model = 'claude-3.5-sonnet', -- AI model to use
      temperature = 0.1, -- Lower = focused, higher = creative
      window = {
        layout = 'float', -- 'vertical', 'horizontal', 'float'
        width = 0.15, -- 50% of screen width
        border = 'rounded', -- 'rounded', 'double', 'single', 'shadow', 'none'
      },
      headers = {
        user = '👤 You',
        assistant = '🤖 Copilot',
        tool = '🔧 Tool',
      },
      separator = '━━',
      auto_fold = true, -- Automatically folds non-assistant messages
      auto_insert_mode = true, -- Enter insert mode when opening
    },
    config = function()
      vim.api.nvim_create_autocmd('BufEnter', {
        pattern = 'copilot-*',
        callback = function()
          vim.opt_local.relativenumber = true
          vim.opt_local.number = true
          vim.opt_local.conceallevel = 0
        end,
      })

      -- In your colorscheme or init.lua
      vim.api.nvim_set_hl(0, 'CopilotChatHeader', { fg = '#7C3AED', bold = true })
      vim.api.nvim_set_hl(0, 'CopilotChatSeparator', { fg = '#374151' })

      vim.keymap.set('n', '<leader>cc', '<cmd>CopilotChatToggle<cr>', { desc = 'Toggle Copilot Chat' })
    end,
  },
}
