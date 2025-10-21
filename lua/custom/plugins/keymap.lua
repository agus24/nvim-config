-- buffer
vim.keymap.set('n', 'H', '<Cmd>BufferPrevious<CR>', { desc = 'Move to previous buffer' })
vim.keymap.set('n', 'L', '<Cmd>BufferNext<CR>', { desc = 'Move to next buffer' })
-- vim.keymap.set('n', '<Leader>bd', '<Cmd>BufferClose<CR>', { desc = 'Close current buffer' })
-- vim.keymap.set('n', '<Leader>bd', '<Cmd>BufferClose<CR>', { desc = 'Close current buffer' })
vim.keymap.set('n', '<c-q>', '<Cmd>BufferClose<CR>', { desc = 'Close current buffer' })
vim.keymap.set('v', '<leader>p', '"0p', { noremap = true, silent = true, desc = 'Paste last yanked text' })

vim.keymap.set('n', ' ', '<Nop>', { desc = 'Search File', silent = false })
vim.keymap.set('n', 'q:', '<Nop>', { desc = 'disabled', silent = false })
vim.keymap.set('n', '<c-s>', '<Cmd>:w<CR>', { desc = 'save', silent = false })

-- scratch
vim.keymap.set('n', '<Leader>.', '<cmd>Scratch<cr>', { desc = 'Create new scratch' })
vim.keymap.set('n', '<Leader>,', '<cmd>ScratchOpen<cr>')

-- neogit
vim.keymap.set('n', '<Leader>gg', '<cmd>Neogit<cr>', { desc = 'Open Neo[G]it' })
vim.keymap.set('n', '<Leader>tn', '<cmd>ToggleTerm<cr>', { desc = 'Open Terminal' })
vim.keymap.set('n', '<Leader>ts', '<cmd>ToggleTermSendCurrentLine<cr>', { desc = 'Copy to Terminal' })

vim.keymap.set('n', '<leader>fp', function()
  vim.fn.setreg('+', vim.fn.expand '%:p')
  print 'Copied path to clipboard!'
end, { noremap = true, silent = true, desc = 'print file path' })

vim.keymap.set('n', '<tab>s', require('telescope.builtin').lsp_document_symbols, { desc = '[D]ocument [S]ymbols' })

-- neotest
-- dap
local dap = require 'dap'
local dapgo = require 'dap-go'
local dapui = require 'dapui'

vim.keymap.set('n', '<leader>dc', dap.continue, { noremap = true, silent = true, desc = 'Start Debugging' })
vim.keymap.set('n', '<leader>dt', dapgo.debug_test, { noremap = true, silent = true, desc = 'Start go Debug test' })
vim.keymap.set('n', '<leader>db', dap.toggle_breakpoint, { noremap = true, silent = true, desc = 'Toggle Breakpoint' })
vim.keymap.set('n', '<leader>ds', dap.step_over, { desc = 'Step Over' })
vim.keymap.set('n', '<F6>', dap.step_over, { desc = 'Step Over' })
vim.keymap.set('n', '<leader>di', dap.step_into, { desc = 'Step Into' })
vim.keymap.set('n', '<F7>', dap.step_into, { desc = 'Step Into' })
vim.keymap.set('n', '<leader>do', dap.step_out, { desc = 'Step Out' })
vim.keymap.set('n', '<F8>', dap.step_out, { desc = 'Step Out' })
vim.keymap.set('n', '<leader>dr', dap.repl.toggle, { desc = 'Toggle Debug Console' })
vim.keymap.set('n', '<leader>du', dapui.toggle, { desc = 'Toggle Debug UI' })
vim.keymap.set('n', '<leader>dq', dap.terminate, { desc = 'Stop Debugging' })

return {}
