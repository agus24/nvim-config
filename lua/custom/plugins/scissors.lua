return {
  'chrisgrieser/nvim-scissors',
  dependencies = 'nvim-telescope/telescope.nvim',
  opts = {
    snippetDir = vim.fn.stdpath 'config' .. '/snippet-scissors',
    snippetSelection = {
      picker = 'auto',
    },
  },
  init = function()
    local scissors = require 'scissors'
    vim.keymap.set('n', '<leader><tab>a', function()
      scissors.addNewSnippet()
    end, { desc = 'create new snippet' })

    vim.keymap.set('n', '<leader><tab>e', function()
      scissors.editSnippet()
    end, { desc = 'create new snippet' })
  end,
}
