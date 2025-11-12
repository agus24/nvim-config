return {
  {
    'olimorris/persisted.nvim',
    -- event = 'BufReadPre', -- Ensure the plugin loads only when a buffer has been loaded
    opts = {
      autostart = true, -- Automatically start the plugin on load?
      autoload = true, -- Automatically start the plugin on load?
      should_save = function()
        return true
      end,
      on_autoload_no_session = function()
        vim.notify 'No existing session to load.'
      end,
      save_dir = vim.fn.expand(vim.fn.stdpath 'data' .. '/sessions/'), -- Resolves to ~/.local/share/nvim/sessions/
    },
    setup = function() end,
  },
}
