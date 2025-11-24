return {
  {
    'mistricky/codesnap.nvim',
    build = 'make',
    keys = {
      { '<leader>cs', '<cmd>CodeSnap<cr>', mode = 'x', desc = 'Save selected code snapshot into clipboard' },
      { '<leader>cf', '<cmd>CodeSnapSave<cr>', mode = 'x', desc = 'Save selected code snapshot in ~/Pictures' },
    },
    opts = {
      save_path = '~/Pictures/codesnap',
      has_breadcrumbs = true,
      bg_theme = 'bamboo',
      watermark = 'Made by Kepencet with ❤️',
      watermark_font_family = 'Comic Sans MS',
      mac_window_bar = true,
      title = 'Code Snapshot',
      has_line_number = true,
    },
  },
}
