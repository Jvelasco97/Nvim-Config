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

vim.cmd('let g:user_emmet_install_global = 0')
vim.cmd('autocmd FileType html,css EmmetInstall')

vim.cmd('command Html5Boiler execute ":put =readfile(\'/home/xerothyl/.config/nvim/boiler_plates/html5_boiler\')"')
vim.cmd('command CppBoiler execute ":put =readfile(\'/home/xerothyl/.config/nvim/boiler_plates/cpp_boiler\')"')
vim.cmd('command CBoiler execute ":put =readfile(\'/home/xerothyl/.config/nvim/boiler_plates/c_boiler\')"')
vim.cmd('command HBoiler execute ":put =readfile(\'/home/xerothyl/.config/nvim/boiler_plates/h_boiler\')"')

vim.cmd('inoremap <silent><expr> <C-Space> compe#complete()')
vim.cmd('inoremap <silent><expr> <CR>      compe#confirm(\'<CR>\')')
vim.cmd('inoremap <silent><expr> <C-e>     compe#close(\'<C-e>\')')
vim.cmd('inoremap <silent><expr> <C-f>     compe#scroll({ \'delta\': +4 })')
vim.cmd('inoremap <silent><expr> <C-d>     compe#scroll({ \'delta\': -4 })')

vim.cmd('colorscheme doom-one')
