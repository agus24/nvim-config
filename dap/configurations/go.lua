local dap = require 'dap'

dap.configurations.go = {
  {
    type = 'go',
    name = 'Debug',
    request = 'launch',
    program = '${file}',
  },
  {
    type = 'go',
    name = 'Debug Test',
    request = 'launch',
    mode = 'test',
    program = '${file}',
  },
}
