local opts = { noremap = true, silent = true }
-- local term_opts = { silent = true }
-- Shorten function name
local keymap = vim.api.nvim_set_keymap
lvim.keys.normal_mode["<S-h>"] = ":bprevious<CR>"
lvim.keys.normal_mode["<S-l>"] = ":bnext<CR>"
lvim.keys.normal_mode["<C-S-d>"] = "yyp"
lvim.keys.visual_mode["<C-S-d>"] = "yyp"
lvim.keys.normal_mode["<TAB>"] = ">>";
lvim.keys.normal_mode["<S-TAB>"] = "<<";
lvim.keys.normal_mode["<CR>"] = "o";
lvim.keys.normal_mode["<S-CR>"] = "O";
lvim.keys.normal_mode["<C-w>"] = ":BufferKill<CR>";
lvim.keys.normal_mode["<ESC>"] = ":noh<CR>";
lvim.keys.normal_mode["<C-S-F>"] = "Text";
lvim.keys.normal_mode["<C-a>"] = "ggVG";
lvim.keys.normal_mode["<C->"] = "<cmd>TroubleToggle<cr>"
lvim.kyes.normal_mode["K"] = ":Lspsaga hover_doc<CR>"
lvim.kyes.normal_mode["C-k"] = ":Lspsaga signature_help<CR>"
lvim.kyes.normal_mode["C-j"] = ":Lspsaga diagnostic_jump_next<CR>"
-- Vual --
-- Stay in indent mode
--
-- local map  = vim.api.nvim_set_keymap
-- local opts = { noremap = true, silent = true }
-- local expr = { noremap = true, silent = true, expr = true }
vim.keymap.set("n", "<leader>xx", "<cmd>TroubleToggle<cr>",
  {silent = true, noremap = true}
)
vim.keymap.set("n", "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<cr>",
  {silent = true, noremap = true}
)
vim.keymap.set("n", "<leader>xd", "<cmd>TroubleToggle document_diagnostics<cr>",
  {silent = true, noremap = true}
)
vim.keymap.set("n", "<leader>xl", "<cmd>TroubleToggle loclist<cr>",
  {silent = true, noremap = true}
)
vim.keymap.set("n", "<leader>xq", "<cmd>TroubleToggle quickfix<cr>",
  {silent = true, noremap = true}
)
vim.keymap.set("n", "gR", "<cmd>TroubleToggle lsp_references<cr>",
  {silent = true, noremap = true}
)
keymap("v", ">", ">gv", opts)
keymap("v", "<", "<gv", opts)

