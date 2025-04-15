-- buffer
vim.keymap.set('n', 'H', '<Cmd>BufferPrevious<CR>', { desc = 'Move to previous buffer' })
vim.keymap.set('n', 'L', '<Cmd>BufferNext<CR>', { desc = 'Move to next buffer' })
-- vim.keymap.set('n', '<Leader>bd', '<Cmd>BufferClose<CR>', { desc = 'Close current buffer' })
vim.keymap.set('n', '<Leader>bd', '<Cmd>BufferClose<CR>', { desc = 'Close current buffer' })
vim.keymap.set('n', '<c-q>', '<Cmd>BufferClose<CR>', { desc = 'Close current buffer' })
vim.keymap.set('v', '<leader>p', '"0p', { noremap = true, silent = true, desc = 'Paste last yanked text' })

-- scratch
vim.keymap.set('n', '<Leader>.', '<cmd>Scratch<cr>', { desc = 'Create new scratch' })
vim.keymap.set('n', '<Leader>,', '<cmd>ScratchOpen<cr>')

-- neogit
vim.keymap.set('n', '<Leader>g', '<cmd>Neogit<cr>', { desc = 'Open Neo[G]it' })
vim.keymap.set('n', '<Leader>tn', '<cmd>ToggleTerm<cr>', { desc = 'Open Terminal' })
vim.keymap.set('n', '<Leader>ts', '<cmd>ToggleTermSendCurrentLine<cr>', { desc = 'Copy to Terminal' })

-- neotest
-- dap
local dap = require 'dap'
local dapui = require 'dapui'

vim.keymap.set('n', '<leader>dc', dap.continue, { noremap = true, silent = true, desc = 'Start Debugging' })
vim.keymap.set('n', '<leader>db', dap.toggle_breakpoint, { noremap = true, silent = true, desc = 'Toggle Breakpoint' })
vim.keymap.set('n', '<leader>ds', dap.step_over, { desc = 'Step Over' })
vim.keymap.set('n', '<leader>di', dap.step_into, { desc = 'Step Into' })
vim.keymap.set('n', '<leader>do', dap.step_out, { desc = 'Step Out' })
vim.keymap.set('n', '<leader>dB', function()
  dap.set_breakpoint(vim.fn.input 'Breakpoint condition: ')
end, { desc = 'Set Conditional Breakpoint' })
vim.keymap.set('n', '<leader>dr', dap.repl.open, { desc = 'Open Debug Console' })
vim.keymap.set('n', '<leader>du', dapui.toggle, { desc = 'Toggle Debug UI' })

vim.keymap.set('n', '<leader>dq', dap.terminate, { desc = 'Stop Debugging' })

return {}
