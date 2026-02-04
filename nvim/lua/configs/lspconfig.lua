require("nvchad.configs.lspconfig").defaults()

local servers = {
  "html",
  "cssls",
  "omnisharp",
  "clangd",
}

vim.lsp.enable(servers)

