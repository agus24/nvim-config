-- buffer
vim.keymap.set('n', 'H', '<Cmd>BufferPrevious<CR>', { desc = 'Move to previous buffer' })
vim.keymap.set('n', 'L', '<Cmd>BufferNext<CR>', { desc = 'Move to next buffer' })
vim.keymap.set('n', '<Leader>bd', '<Cmd>BufferClose<CR>', { desc = 'Close current buffer' })

-- scratch
vim.keymap.set('n', '<Leader>.', '<cmd>Scratch<cr>', { desc = 'Create new scratch' })
vim.keymap.set('n', '<Leader>,', '<cmd>ScratchOpen<cr>')

return {}
