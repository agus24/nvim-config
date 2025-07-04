local function chooseTheme()
  vim.cmd 'colorscheme kanagawa'
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

      vim.cmd [[
        hi DapBreakpoint guifg=#E06C75 guibg=#1E1E1E
        hi DapLogPoint guifg=#61AFEF guibg=#1E1E1E
        hi DapStopped guifg=#98C379 guibg=#1E1E1E
      ]]
      chooseTheme()
    end,
  },
  {
    'rebelot/kanagawa.nvim',
    name = 'kanagawa',
    config = function()
      require('kanagawa').setup {
        transparent = true,
      }

      chooseTheme()
    end,
  },
}
