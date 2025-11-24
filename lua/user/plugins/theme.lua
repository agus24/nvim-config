-- local function chooseTheme()
--   vim.cmd 'colorscheme one_monokai'
-- end

return {
  {
    'zaldih/themery.nvim',
    lazy = false,
    config = function()
      require('themery').setup {
        themes = {
          -- 'nightfox',
          'rose-pine',
          'kanagawa',
          -- 'cobalt',
          -- 'nekonight',
          'one_monokai',
        },
        livePreview = true,
        -- transparent = true,
      }
    end,
  },
  {
    'rose-pine/neovim',
    name = 'rose-pine',
    config = function()
      require('rose-pine').setup {
        styles = {
          -- transparency = true,
        },
      }

      vim.cmd [[
        hi DapBreakpoint guifg=#E06C75 guibg=#1E1E1E
        hi DapLogPoint guifg=#61AFEF guibg=#1E1E1E
        hi DapStopped guifg=#98C379 guibg=#1E1E1E
      ]]
    end,
  },
  {
    'rebelot/kanagawa.nvim',
    name = 'kanagawa',
    config = function()
      require('kanagawa').setup {
        -- transparent = true,
      }
    end,
  },
  {
    'cpea2506/one_monokai.nvim',
    name = 'one_monokai',
    config = function()
      require('one_monokai').setup {
        -- transparent = true,
      }
    end,
  },
}
