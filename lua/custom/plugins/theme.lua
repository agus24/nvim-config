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
      vim.cmd 'colorscheme nightfox'
    end,
  },
}
