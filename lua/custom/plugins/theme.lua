return {
  {
    'EdenEast/nightfox.nvim',
    name = 'nightfox',
    init = function()
      local nightfox = require 'nightfox'

      nightfox.setup {
        options = {
          transparent = true,
        },
      }
      -- vim.cmd 'colorscheme nightfox'
    end,
  },
  {
    'olimorris/onedarkpro.nvim',
    priority = 1000, -- Ensure it loads first
    init = function()
      require('onedarkpro').setup {
        options = {
          transparency = true,
          terminal_colors = false,
          highlight_inactive_windows = true,
        },
      }

      vim.cmd 'colorscheme onedark'
    end,
  },
}
