require('mason').setup()
require('mason-lspconfig').setup {
  ensure_installed = {
    'gopls',
  },
}

require('lspconfig').gopls.setup {
  settings = {
    gopls = {
      gofumpt = true,
      analyses = {
        unusedparams = true,
      },
      staticcheck = true,
    },
  },
}

return {}
