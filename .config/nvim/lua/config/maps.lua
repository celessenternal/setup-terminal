vim.g.mapleader = " "
local keymap = vim.keymap
local opts = { noremap = true, silent = true }
local optss = { noremap = true, silent = true, expr = true }

keymap.set("n", "<c-a>", "ggVG")

keymap.set({ "n", "x" }, "<leader>p", '"0p')

keymap.set("n", "<leader>q", ":q<cr>")
keymap.set("n", "<leader>w", ":w<cr>")
keymap.set("n", "<leader>x", ":x<cr>")

keymap.set("n", "j", [[v:count?'j':'gj']], optss)
keymap.set("n", "k", [[v:count?'k':'gk']], optss)

keymap.set("n", "te", ":tabedit<cr>", opts)
