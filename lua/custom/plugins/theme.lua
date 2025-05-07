local function chooseTheme()
  vim.cmd 'colorscheme rose-pine'
end

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
      chooseTheme()
    end,
  },
  {
    'olimorris/onedarkpro.nvim',
    name = 'onedarkpro',
    priority = 1000, -- Ensure it loads first
    config = function()
      local onedarkpro = require 'onedarkpro'

      onedarkpro.setup {
        options = {
          transparency = true,
          -- terminal_colors = false,
          -- highlight_inactive_windows = true,
        },
      }

      chooseTheme()
    end,
  },
  {
    'rose-pine/neovim',
    name = 'rose-pine',
    config = function()
      require('rose-pine').setup {
        styles = {
          transparency = true,
        },
      }
      chooseTheme()
    end,
  },
}
