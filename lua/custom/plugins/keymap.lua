-- buffer
vim.keymap.set('n', 'H', '<Cmd>BufferPrevious<CR>', { desc = 'Move to previous buffer' })
vim.keymap.set('n', 'L', '<Cmd>BufferNext<CR>', { desc = 'Move to next buffer' })
vim.keymap.set('n', '<Leader>bd', '<Cmd>BufferClose<CR>', { desc = 'Close current buffer' })

-- scratch
vim.keymap.set('n', '<Leader>.', '<cmd>Scratch<cr>', { desc = 'Create new scratch' })
vim.keymap.set('n', '<Leader>,', '<cmd>ScratchOpen<cr>')

-- local opts = { noremap = true, silent = true }
-- vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { noremap = true, silent = true, desc = 'Diagnostic Open float' })
-- vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { noremap = true, silent = true, desc = 'Diagnostic Go to prev' })
-- vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { noremap = true, silent = true, desc = 'Diagnostic Go to next' })
-- vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { noremap = true, silent = true, desc = 'Diagnostic set loc list' })

return {}
