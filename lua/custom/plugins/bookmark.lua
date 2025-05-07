return {
  {
    'crusj/bookmarks.nvim',
    keys = {
      { '<tab><tab>', mode = { 'n' } },
    },
    branch = 'main',
    dependencies = { 'nvim-web-devicons' },
    config = function()
      require('bookmarks').setup {
        keymap = {
          add = '<tab>z',
          delete = '<tab>d',
          order = '<space><space>',
        },
      }
      require('telescope').load_extension 'bookmarks'
    end,
  },
}
