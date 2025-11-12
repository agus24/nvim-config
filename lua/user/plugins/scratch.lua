return {
  'LintaoAmons/scratch.nvim',
  event = 'VeryLazy',
  dependencies = {
    -- { 'ibhagwan/fzf-lua' }, --optional: if you want to use fzf-lua to pick scratch file. Recommanded, since it will order the files by modification datetime desc. (require rg)
    -- { 'nvim-telescope/telescope.nvim' }, -- optional: if you want to pick scratch file by telescope
    -- { 'stevearc/dressing.nvim' }, -- optional: to have the same UI shown in the GIF
  },
  config = function()
    require('scratch').setup {
      scratch_file_dir = vim.fn.stdpath 'cache' .. '/scratch.nvim',
      filetypes = { 'lua', 'js', 'sh', 'php', 'sql', 'txt', 'go', 'md' },
    }
  end,
}
