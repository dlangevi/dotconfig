return {


  -- Visual enhancements
  "lukas-reineke/indent-blankline.nvim",
  "rafamadriz/neon",
  'sainnhe/sonokai',
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require 'plugins.config.lualine'
    end,
  },
  {
    'norcalli/nvim-colorizer.lua',
    config = function()
      require 'colorizer'.setup()
    end,
  },

  -- code running
  { 'CRAG666/code_runner.nvim',
    dependencies = 'nvim-lua/plenary.nvim',
    config = function()
      require('code_runner').setup({
        -- put here the commands by filetype
        filetype = {
          python = "python3 -u",
          typescript = "deno run",
          rust = "cd $dir && rustc $fileName && $dir/$fileNameWithoutExt"
        },
      })
    end
  },

  -- startup screen
  {
    'goolord/alpha-nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require 'alpha'.setup(require 'alpha.themes.startify'.config)
    end
  },

  -- added editing functionality
  {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  },
  {
    "kylechui/nvim-surround",
    version = "*", -- for stability
    config = function()
      require("nvim-surround").setup({
      })
    end
  },
  { "L3MON4D3/LuaSnip", version = "v<CurrentMajor>.*" },
  { "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-nvim-lua",
      "hrsh7th/cmp-nvim-lsp",
      "saadparwaiz1/cmp_luasnip",
      "onsails/lspkind.nvim",
    },
    config = function()
      require "plugins.config.completion"
    end
  },

  -- enable tmux navigation
  { 'numToStr/Navigator.nvim',
    config = function()
      require('Navigator').setup()
    end 
  },

  -- filebrowsing
  {
    'nvim-tree/nvim-tree.lua',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    ft = 'alpha',
    version = 'nightly', -- optional, updated every week. (see issue #1193)
    config = function()
      require "plugins.config.nvim-tree"
    end,
  },

  -- fuzzy finder
  {
    'nvim-telescope/telescope.nvim',
    version = '0.1.0',
    dependencies = {
      { 'nvim-lua/plenary.nvim' },
      { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' }
    },
    config = function()
      require "plugins.config.telescope"
    end,
  },

  -- LSP and syntax highlighing
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function()
      require 'plugins.config.treesitter'
    end
  },
  { 'neovim/nvim-lspconfig',
    config = function()
      require 'plugins.config.lspconfig'
    end
  },

  -- Helpful hints for keybinds
  {
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
  },
}

