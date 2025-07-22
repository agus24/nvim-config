return {
  {
    's1n7ax/nvim-window-picker',
    name = 'window-picker',
    event = 'VeryLazy',
    version = '2.*',
    setup = function()
      require('window-picker').setup {
        hint = 'floating-big-letter',
      }
    end,
  },
}
