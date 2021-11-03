-- local fn = vim.fn
-- local execute = vim.api.nvim_command
-- local packer_install_dir = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
-- local plug_url_format = ''


-- if vim.g.is_linux > 0 then
  -- plug_url_format = 'https://hub.fastgit.org/%s'
-- else
  -- plug_url_format = 'https://github.com/%s'
-- end
-- local packer_repo = string.format(plug_url_format, 'wbthomason/packer.nvim')
-- local install_cmd = string.format('10split |term git clone --depth=1 %s %s', packer_repo, packer_install_dir)
-- 
-- if fn.empty(fn.glob(packer_install_dir)) > 0 then
  -- vim.api.nvim_echo({{'Installing Packer.nvim', 'Type'}}, true, {})
  -- execute(install_cmd)
  -- vim.cmd [[packadd packer.nvim]]
-- end


vim.cmd [[packadd packer.nvim]]

return require('packer').startup(
  function (use)
    -- Quality of life plugins
    use 'norcalli/nvim-colorizer.lua'
    use 'airblade/vim-rooter'
    use 'tpope/vim-commentary'
    use 'tpope/vim-fugitive'
    use {'hoob3rt/lualine.nvim',
      requires = 'kyazdani42/nvim-web-devicons',
      config = {
      }
    }
    use {'kdheepak/tabline.nvim',
      {requires = 'kyazdani42/nvim-web-devicons'},
      {requires = 'hoob3rt/lualine.nvim'},
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
    -- telescopic johnson
    use {'nvim-telescope/telescope.nvim',
      requires = {
        {'nvim-lua/plenary.nvim'},
        {'nvim-lua/popup.nvim'},
        {'nvim-telescope/telescope-fzy-native.nvim'},
        {'nvim-telescope/telescope-project.nvim'},
      }
    }
    -- treesitter
    use {'nvim-treesitter/nvim-treesitter',
      run = ':TSUpdate',
      requires = {
        {'nvim-treesitter/playground'},
      }
    }
    use {'windwp/nvim-autopairs',
      requires = {
        {'nvim-treesitter/nvim-treesitter'},
        {'hrsh7th/nvim-cmp'},
      }
    }
    -- colorscheme
    use 'cocopon/iceberg.vim'
  end
)
