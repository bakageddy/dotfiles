return require('packer').startup(

  function (use)
    -- Quality of life plugins
    use 'numToStr/FTerm.nvim'
    use 'Pocco81/TrueZen.nvim'
    use 'wbthomason/packer.nvim'
    use 'norcalli/nvim-colorizer.lua'
    use 'ahmedkhalf/project.nvim'
    use 'numToStr/Comment.nvim'
    use {'hoob3rt/lualine.nvim',
      requires = 'kyazdani42/nvim-web-devicons',
    }
    use {
      'kyazdani42/nvim-tree.lua',
      {requires = 'kyazdani42/nvim-web-devicons'},
    }

    -- LSP Stuff
    use 'neovim/nvim-lspconfig'
    use 'onsails/lspkind-nvim'
    use {'hrsh7th/nvim-cmp',
      requires = {
        {'hrsh7th/cmp-nvim-lsp'},
        {'hrsh7th/cmp-nvim-lua'},
        {'hrsh7th/cmp-buffer'},
        {'hrsh7th/cmp-path'},
        {'L3MON4D3/LuaSnip'},
        {'saadparwaiz1/cmp_luasnip'},
      }
    }
    use 'ray-x/lsp_signature.nvim'

    -- telescopic johnson
    use {'nvim-telescope/telescope.nvim',
      requires = {
        {'nvim-lua/plenary.nvim'},
        {'nvim-lua/popup.nvim'},
        {'nvim-telescope/telescope-fzy-native.nvim'},
        {'nvim-telescope/telescope-project.nvim'},
        {'nvim-telescope/telescope-file-browser.nvim'},
      }
    }
    -- treesitter
    use {'nvim-treesitter/nvim-treesitter',
      run = ':TSUpdate',
    }

    use {'nvim-treesitter/playground',
      requires = {
        {'nvim-treesitter/nvim-treesitter'},
      }
    }
    use {'windwp/nvim-autopairs',
      requires = {
        {'nvim-treesitter/nvim-treesitter'},
        {'hrsh7th/nvim-cmp'},
      }
    }

    -- colorscheme
    use 'ellisonleao/gruvbox.nvim'
    use 'trettons/tokyonight-nvim'
  end
)
