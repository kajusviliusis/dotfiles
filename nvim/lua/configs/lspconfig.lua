require("nvchad.configs.lspconfig").defaults()

local servers = {
  "html",
  "cssls",
  "omnisharp",
  "clangd",
  "jdtls",
}

vim.lsp.enable(servers)

