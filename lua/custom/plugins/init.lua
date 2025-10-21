-- Indentation fix for Vue/Nuxt components
vim.api.nvim_create_autocmd({ 'BufRead', 'BufNewFile' }, {
  pattern = '*/components/*.vue',
  callback = function()
    vim.bo.shiftwidth = 2
    vim.bo.tabstop = 2
    vim.bo.softtabstop = 2
    vim.bo.expandtab = true
  end,
})

return {
  {
    'romgrk/barbar.nvim',
    dependencies = {
      'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
      'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
    },
    init = function()
      vim.g.barbar_auto_setup = false
      require('barbar').setup {
        -- animation = true,
        -- insert_at_start = true,
      }
    end,
    opts = {},
    version = '^1.0.0', -- optional: only update when a new 1.x version is released
  },
}
