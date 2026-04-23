return {
  {
    'zbirenbaum/copilot.lua',
    dependencies = {
      -- 'copilotlsp-nvim/copilot-lsp', -- (optional) for NES functionalitycopilot
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
          enabled = false,
          keymap = {
            accept_and_goto = '<leader>ny',
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
      model = 'gpt-5.1', -- AI model to use
      temperature = 0.1, -- Lower = focused, higher = creative
      window = {
        layout = 'vertical', -- 'vertical', 'horizontal', 'float'
        width = 0.5, -- 50% of screen width
      },
      auto_insert_mode = true, -- Enter insert mode when opening
    },
    config = function()
      vim.keymap.set('n', '<leader>cc', '<cmd>CopilotChatToggle<cr>', { desc = 'Toggle copilot chat' })
      vim.keymap.set('n', '<leader>cp', '<cmd>CopilotChatPrompts<cr>', { desc = 'Show custom prompt' })
    end,
  },
}
