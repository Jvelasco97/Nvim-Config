vim.cmd('packadd packer.nvim')         -- Load package manager

return require('packer').startup(function()
    -- Packer can manage itself as an optional plugin

  use
  {
    'nvim-lua/plenary.nvim'
  }

  use 
  {
    'wbthomason/packer.nvim', opt = true
  }

  use 
  {
    'neovim/nvim-lspconfig', 
    config = require("plugins.plugin_configs.lspconfig"),
  }

  use 
  {
    'hrsh7th/nvim-cmp',
    config = require("plugins.plugin_configs.nvim-cmp"),
  }

  --Insert or delete brackets, parens, quotes in pair.
  use
  {
    'windwp/nvim-autopairs',
    setup = require('nvim-autopairs').setup{},
  }

   use 
   {
     "kyazdani42/nvim-tree.lua",
     cmd = { "NvimTreeToggle", "NvimTreeFocus" },
     config = function() require'nvim-tree'.setup {} end,
   }

  use 
  { 
    'karb94/neoscroll.nvim',
    config = require("plugins.plugin_configs.neoscroll"),
    opt = false,
  }

  use 
  {
    'nvim-telescope/telescope.nvim',
    requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
  }

  use 'romgrk/doom-one.vim'

  use {'kyazdani42/nvim-web-devicons'}

  use {'hrsh7th/vim-vsnip'}
  use {'hrsh7th/cmp-vsnip'}
  use {'hrsh7th/cmp-nvim-lsp'}
  use {'hrsh7th/cmp-buffer'}
  use {'hrsh7th/vim-vsnip-integ'}

  use 
  {
    'nvim-treesitter/nvim-treesitter', run=function() vim.cmd(":TSUpdate") end,
    config = require("plugins.plugin_configs.treesitter"),
  }

  use 
  {
    "lukas-reineke/indent-blankline.nvim",
    config = require("plugins.plugin_configs.indent-line"),
  }

  use 
  {
    'akinsho/nvim-bufferline.lua', 
    require = 'kyazdani42/nvim-web-devicons',
    config = require("plugins.plugin_configs.bufferline"),
  }

  use 
  {
    'norcalli/nvim-colorizer.lua',
    config = require 'colorizer'.setup(),
  }

  use 
  {
    "tpope/vim-commentary",
  }

  use
  {
    "mattn/emmet-vim"
  }

  use {'kristijanhusak/orgmode.nvim',
      config = function()
        require('orgmode').setup()
      end
      }

  use {"akinsho/org-bullets.nvim", config = function()
    require("org-bullets").setup {
      symbols = { "◉", "○", "✸", "✿" },
      -- or a function that receives the defaults and returns a list
      symbols = function(default_list)
	table.insert(default_list, "♥")
	return default_list
      end
    }
  end}

	use {
	  'lukas-reineke/headlines.nvim',
	  config = function()
	    require('headlines').setup{
    markdown = {
        source_pattern_start = "^```",
        source_pattern_end = "^```$",
        dash_pattern = "^---+$",
        headline_pattern = "^#+",
        headline_signs = { "Headline" },
        codeblock_sign = "CodeBlock",
        dash_highlight = "Dash",
    },
    rmd = {
        source_pattern_start = "^```",
        source_pattern_end = "^```$",
        dash_pattern = "^---+$",
        headline_pattern = "^#+",
        headline_signs = { "Headline" },
        codeblock_sign = "CodeBlock",
        dash_highlight = "Dash",
    },
    vimwiki = {
        source_pattern_start = "^{{{%a+",
        source_pattern_end = "^}}}$",
        dash_pattern = "^---+$",
        headline_pattern = "^=+",
        headline_signs = { "Headline" },
        codeblock_sign = "CodeBlock",
        dash_highlight = "Dash",
    },
    org = {
        source_pattern_start = "#%+[bB][eE][gG][iI][nN]_[sS][rR][cC]",
        source_pattern_end = "#%+[eE][nN][dD]_[sS][rR][cC]",
        dash_pattern = "^-----+$",
        headline_pattern = "^%*+",
        headline_signs = { "Headline" },
        codeblock_sign = "CodeBlock",
        dash_highlight = "Dash",
    },
	    }

	  end,
	}
end)
