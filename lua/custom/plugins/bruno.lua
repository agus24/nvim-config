return {
  {
    'romek-codes/bruno.nvim',
    dependencies = { 'nvim-lua/plenary.nvim', 'nvim-telescope/telescope.nvim' },
    config = function()
      require('bruno').setup {
        collection_paths = {
          { name = 'Main', path = '/path/to/folder/containing/collections/Documents/Bruno' },
        },
      }
    end,
  },
}
