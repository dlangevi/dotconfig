vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'tpope/vim-surround'
  use 'Yggdroot/indentLine'
  use { 'numToStr/Navigator.nvim',
    config = function()
      require('Navigator').setup()
    end }

  use { 'neovim/nvim-lspconfig',
    config = function()
      require 'plugins.config.lspconfig'
    end
  }

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use 'scrooloose/nerdtree'
  use {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.0',
    requires = { { 'nvim-lua/plenary.nvim' } },
    config = function()
      require "plugins.config.telescope"
    end,
  }
  use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

  -- Colorschemes
  use "rafamadriz/neon"
  use 'sainnhe/sonokai'

  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  -- Training
  use 'ThePrimeagen/vim-be-good'

  use {
    "folke/which-key.nvim",
    config = function()
      require("which-key").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  }
end)
