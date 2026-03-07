require("nvchad.configs.lspconfig").defaults()

local servers = {
  "html",
  "cssls",
  "omnisharp",
  "clangd",
  "jdtls",
  "gopls",
}

vim.lsp.enable(servers)

