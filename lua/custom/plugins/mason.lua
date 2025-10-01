require('mason').setup()
require('mason-lspconfig').setup {
  ensure_installed = {
    'gopls',
  },
}

vim.lsp.config('gopls', {
  settings = {
    gopls = {
      gofumpt = true,
      analyses = {
        unusedparams = true,
      },
      staticcheck = true,
    },
  },
})

return {}
