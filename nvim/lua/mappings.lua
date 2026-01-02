require "nvchad.mappings"

-- add yours here
local M = {}

M.general = {
  n = {
    ["<C-Left>"]  = { "b", "Previous word" },
    ["<C-Right>"] = { "w", "Next word" },
  },

  i = {
    ["<C-Left>"]  = { "<C-o>b", "Previous word" },
    ["<C-Right>"] = { "<C-o>w", "Next word" },
  },
}

return M


local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
