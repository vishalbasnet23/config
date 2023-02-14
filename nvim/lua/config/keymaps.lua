-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local opts = { noremap = true, silent = true }
-- local term_opts = { silent = true }
-- Shorten function name
local keymap = vim.api.nvim_set_keymap

keymap("n", "<C-a>", "ggVG", opts)
keymap("n", "<CR>", "o", opts)
keymap("n", "<C-S-CR>", "O", opts)
keymap("n", "<C-S-d>", "yyp", opts)
keymap("n", "<C-w>", ":DeleteBuffer<CR>", opts)
keymap("n", "<TAB>", ">>", opts)
keymap("n", "<S-TAB>", "<<", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)
keymap("n", "<S-l>", ":bnext<CR>", opts)
