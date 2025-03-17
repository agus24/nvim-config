-- buffer
vim.keymap.set('n', 'H', '<Cmd>BufferPrevious<CR>', { desc = 'Move to previous buffer' })
vim.keymap.set('n', 'L', '<Cmd>BufferNext<CR>', { desc = 'Move to next buffer' })
-- vim.keymap.set('n', '<Leader>bd', '<Cmd>BufferClose<CR>', { desc = 'Close current buffer' })
vim.keymap.set('n', '<C-q>', '<Cmd>BufferClose<CR>', { desc = 'Close current buffer' })

-- scratch
vim.keymap.set('n', '<Leader>.', '<cmd>Scratch<cr>', { desc = 'Create new scratch' })
vim.keymap.set('n', '<Leader>,', '<cmd>ScratchOpen<cr>')

-- neogit
vim.keymap.set('n', '<Leader>g', '<cmd>Neogit<cr>', { desc = 'Open Neo[G]it' })
vim.keymap.set('n', '<Leader>tn', '<cmd>ToggleTerm<cr>', { desc = 'Open Terminal' })
vim.keymap.set('n', '<Leader>ts', '<cmd>ToggleTermSendCurrentLine<cr>', { desc = 'Copy to Terminal' })

-- neotest

return {}
