require("nvchad.configs.lspconfig").defaults()

local servers = {
  "html",
  "cssls",
  "omnisharp",
}

vim.lsp.enable(servers)

