require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  ignore_install = {}, -- List of parsers to ignore installing
  highlight = {
    enable = true,              -- false will disable the whole extension
    disable = {},  -- list of language that will be disabled
    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}

-- local define_modules = require('nvim-treesitter').define_modules
-- local query = require('nvim-treesitter.query')

-- local foldmethod_backups = {}
-- local foldexpr_backups = {}

-- define_modules({
--   folding = {
--     enable = true,
--     attach = function(bufnr)
--       -- Fold settings are actually window based...
--       foldmethod_backups[bufnr] = vim.wo.foldmethod
--       foldexpr_backups[bufnr] = vim.wo.foldexpr
--       vim.wo.foldmethod = 'expr'
--       vim.wo.foldexpr = 'nvim_treesitter#foldexpr()'
--     end,
--     detach = function(bufnr)
--       vim.wo.foldmethod = foldmethod_backups[bufnr]
--       vim.wo.foldexpr = foldexpr_backups[bufnr]
--       foldmethod_backups[bufnr] = nil
--       foldexpr_backups[bufnr] = nil
--     end,
--     is_supported = query.has_folds
--   }
-- })
