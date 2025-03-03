local dap = require 'dap'

dap.adapters.php = {
  type = 'executable',
  command = 'php',
  args = { '-dxdebug.start_with_request=yes', '-dxdebug.mode=debug', '-S', '127.0.0.1:9003' },
}

dap.configurations.php = {
  {
    type = 'php',
    request = 'launch',
    name = 'Listen for Xdebug',
    port = 9003,
    serverSourceRoot = '/var/www/html', -- Adjust this to your project root
    localSourceRoot = vim.fn.getcwd(),
  },
}
