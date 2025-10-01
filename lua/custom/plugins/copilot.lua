return {
  {
    'zbirenbaum/copilot.lua',
    -- requires = {
    --   'copilotlsp-nvim/copilot-lsp', -- (optional) for NES functionality
    -- },
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
            open = '<leader>cp',
          },
          layout = {
            position = 'right',
          },
        },
        -- nes = {
        --   enabled = true,
        --   keymap = {
        --     accept_and_goto = '<leader>fs',
        --     accept = false,
        --     dismiss = '<Esc>',
        --   },
        -- },
      }
    end,
  },
}
