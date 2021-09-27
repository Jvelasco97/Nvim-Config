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

opt.list = true
opt.listchars = {
    space = ".",
    eol = " ",
}

vim.o.completeopt = "menuone,noselect"

vim.cmd [[highlight IndentBlanklineIndent1 guifg=#E06C75 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent2 guifg=#E5C07B gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent3 guifg=#98C379 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent4 guifg=#56B6C2 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent5 guifg=#61AFEF gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent6 guifg=#C678DD gui=nocombine]]

vim.cmd('colorscheme doom-one')
