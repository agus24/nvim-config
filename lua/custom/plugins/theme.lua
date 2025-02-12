return {
  {
    'EdenEast/nightfox.nvim',
    name = 'nightfox',
    init = function()
      local nightfox = require 'nightfox'

      nightfox.setup {
        options = {
          transparent = false,
        },
      }
      vim.cmd 'colorscheme nordfox'
    end,
  },
}
