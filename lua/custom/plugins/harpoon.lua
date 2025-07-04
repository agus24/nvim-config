return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local harpoon = require 'harpoon'

    harpoon:setup()

    -- Add file to Harpoon
    vim.keymap.set('n', '<leader>ha', function()
      harpoon:list():add()
    end, { desc = 'Add file to Harpoon' })

    vim.keymap.set('n', '<leader>hhd', function()
      harpoon:list():remove()
    end, { desc = 'Remove file from Harpoon' })

    -- Open Harpoon UI
    vim.keymap.set('n', '<C-e>', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, { desc = 'Open Harpoon UI' })

    -- Navigation between files
    vim.keymap.set('n', '<leader>h1', function()
      harpoon:list():select(1)
    end, { desc = 'Harpoon to File 1' })
    vim.keymap.set('n', '<leader>h2', function()
      harpoon:list():select(2)
    end, { desc = 'Harpoon to File 2' })
    vim.keymap.set('n', '<leader>h3', function()
      harpoon:list():select(3)
    end, { desc = 'Harpoon to File 3' })
    vim.keymap.set('n', '<leader>h4', function()
      harpoon:list():select(4)
    end, { desc = 'Harpoon to File 4' })

    -- Navigate back and forth between Harpoon files
    vim.keymap.set('n', '<C-n>', function()
      harpoon:list():next()
    end, { desc = 'Next Harpoon file' })
    vim.keymap.set('n', '<C-p>', function()
      harpoon:list():prev()
    end, { desc = 'Previous Harpoon file' })
  end,
}
