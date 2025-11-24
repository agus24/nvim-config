return {
  {
    'bngarren/checkmate.nvim',
    ft = 'markdown', -- Lazy loads for Markdown files matching patterns in 'files'
    version = '~0.11.0', -- pins to minor 0.11.x
    opts = {
      -- your options go here
      files = {
        '*.md', -- Any markdown file (basename matching)
        '**/todo.md', -- 'todo.md' anywhere in directory tree
        'project/todo.md', -- Any path ending with 'project/todo.md'
        '/absolute/path.md', -- Exact absolute path match
      },
    },
    setup = function() end,
  },
}
