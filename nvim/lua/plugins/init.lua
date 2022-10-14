local packer_grp = vim.api.nvim_create_augroup("packer_user_config", { clear = true })
vim.api.nvim_create_autocmd(
  { "BufWritePost" },
  { pattern = "init.lua", command = "source <afile> | PackerCompile", group = packer_grp }
)

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Package Management
  use 'wbthomason/packer.nvim'


  -- Visual enhancements
  use "lukas-reineke/indent-blankline.nvim"
  use "rafamadriz/neon"
  use 'sainnhe/sonokai'
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons' },
    config = function()
      require 'plugins.config.lualine'
    end,
  }

  -- startup screen
  use {
    'goolord/alpha-nvim',
    requires = { 'kyazdani42/nvim-web-devicons' },
    config = function()
      require 'alpha'.setup(require 'alpha.themes.startify'.config)
    end
  }

  -- added editing functionality
  use({
    "kylechui/nvim-surround",
    tag = "*", -- for stability
    config = function()
      require("nvim-surround").setup({
      })
    end
  })

  -- enable tmux navigation
  use { 'numToStr/Navigator.nvim',
    config = function()
      require('Navigator').setup()
    end }

  -- filebrowsing
  use {
    'nvim-tree/nvim-tree.lua',
    requires = { 'nvim-tree/nvim-web-devicons' },
    ft = 'alpha',
    tag = 'nightly', -- optional, updated every week. (see issue #1193)
    config = function()
      require "plugins.config.nvim-tree"
    end,
  }

  -- fuzzy finder
  use {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.0',
    requires = {
      { 'nvim-lua/plenary.nvim' },
      { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
    },
    config = function()
      require "plugins.config.telescope"
    end,
  }

  -- LSP and syntax highlighing
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    config = function()
      require 'plugins.config.treesitter'
    end
  }
  use { 'neovim/nvim-lspconfig',
    config = function()
      require 'plugins.config.lspconfig'
    end
  }

  -- Helpful hints for keybinds
  use {
    "folke/which-key.nvim",
    config = function()
      require("which-key").setup {
        plugins = {
          spelling = {
            enabled = true
          }
        }
      }
    end
  }
end)
