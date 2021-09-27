local opt = vim.opt

opt.clipboard = "unnamedplus"
opt.termguicolors = true
opt.relativenumber = true
opt.number = true
opt.hidden = true
opt.ignorecase = true
opt.smartindent = true
opt.numberwidth = 2
opt.shiftwidth = 2

vim.o.completeopt = "menuone,noselect"

vim.cmd('colorscheme doom-one')
