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
        animation = false,
        auto_hide = true,
        tabpages = true,
      }
      vim.api.nvim_create_autocmd({ 'User' }, {
        pattern = 'PersistedSavePre',
        group = vim.api.nvim_create_augroup('PersistedHooks', {}),
        callback = function()
          vim.api.nvim_exec_autocmds('User', { pattern = 'SessionSavePre' })
        end,
      })
    end,
    opts = {},
    version = '^1.0.0', -- optional: only update when a new 1.x version is released
  },
}
