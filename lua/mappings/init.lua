local function map(mode, lhs, rhs, opts)
  local options = {noremap = true}
    if opts then
      options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

local opt = {}

vim.g.mapleader = " "
vim.w.mapleader = " "

map("n", "<leader>m", ":ShowMarksOnce<CR>")

map("n", "<leader>ff", ":Telescope find_files <CR>")
map("n", "<leader>fi", ":Telescope find_files hidden=true <CR>")
map("n", "<leader>fg", ":Telescope live_grep <CR>")

map("n", "<C-n>", ":NvimTreeFocus <CR>")

map("n", "<leader>/", ":Commentary <CR>")
map("v", "<leader>/", ":Commentary <CR>")

map("n", "<esc><esc>", ":noh <CR>")

map("n", "<Tab>", ":BufferLineCycleNext <CR>")
map("n", "<S-Tab>", ":BufferLineCyclePrev <CR>")
map("n", "<S-x>", ":bdelete <CR>")

map("i", "<C-a>", "<Down>")
map("i", "<C-q>", "<Up>")
