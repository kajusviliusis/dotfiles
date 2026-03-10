return {
  {
    "stevearc/conform.nvim",
    opts = require "configs.conform",
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "obsidian-nvim/obsidian.nvim",
    version = "*",
    ft = "markdown",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
      workspaces = {
        { name = "notes", path = "~/notes" },
      },
      legacy_commands = false,
      ui = {
        enable = true,
      },
      image_folder ="images",
    },
    config = function(_, opts)
      require("obsidian").setup(opts)
      vim.o.conceallevel = 2
    end,
  },
}
