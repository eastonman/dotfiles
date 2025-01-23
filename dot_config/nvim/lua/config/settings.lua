vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.undofile = true
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.g.mapleader = " "
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 0 -- set to 0 to default to tabstop value

-- theme
vim.cmd.colorscheme("dracula")

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
vim.opt.foldlevelstart = 99
vim.api.nvim_set_option("clipboard", "unnamedplus")

