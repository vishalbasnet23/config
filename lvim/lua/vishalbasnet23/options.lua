local options = {
  backup = false,
  number = true,
  scrolloff = 9,
  numberwidth = 2,
  relativenumber = true,
  textwidth = 20,
  wrap = true,
  nolist = true,
  linebreak = true,
  -- foldexpr = "nvim_treesitter#foldexpr"
}

lvim.builtin.treesitter.rainbow.enable = true
for k, v in pairs(options) do
  vim.opt[k] = v
end

