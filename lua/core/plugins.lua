local utils = require "core.utils"

utils.bootstrap()

local present, packer = pcall(require, "packer")
if not present then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

-- Install your plugins here
return packer.startup(function(use)
  --> Miscellaneous
  use "wbthomason/packer.nvim"
  use "nvim-lua/popup.nvim"
  use "nvim-lua/plenary.nvim"

  use {
    "windwp/nvim-autopairs",
    config = function()
      require("configs.autopairs").config()
    end,
  }

  use "kyazdani42/nvim-web-devicons"
  use "kyazdani42/nvim-tree.lua"

  use {
    "akinsho/bufferline.nvim",
    config = function()
      require("configs.bufferline").config()
    end,
  }

  use "moll/vim-bbye"

  use {
    "nvim-lualine/lualine.nvim",
    config = function()
      require("configs.lualine").config()
    end,
  }
  use {
    "akinsho/toggleterm.nvim",
    config = function()
      require("configs.toggleterm").config()
    end,
  }
  use {
    "rcarriga/nvim-notify",
    config = function()
      require("configs.notify").config()
    end,
  }
  use {
    "folke/which-key.nvim",
    config = function()
      require("configs.whichkey").config()
    end,
  }
  use {
    "goolord/alpha-nvim",
    config = function()
      require("configs.alpha").config()
    end,
  }
  use {
    "ahmedkhalf/project.nvim",
    config = function()
      require("configs.project").config()
    end,
  }
  use {
    "lukas-reineke/indent-blankline.nvim",
    config = function()
      require("configs.indent-blankline").config()
    end,
  }
  use { "lewis6991/impatient.nvim" }

  ----------------------------------------------
  --> Not implemented yet
  --> use "antoinemadec/FixCursorHold.nvim"     -- This is needed to fix lsp doc highlight"
  ----------------------------------------------

  -- use {
  --   "iamcco/markdown-preview.nvim",
  --   run = "cd app && yarn install",
  --   cmd = "MarkdownPreview",
  --   -- ft = "markdown",
  --   conifg = "doautocmd mkdp_init  BufEnter",
  -- }

  --> Colorscheme
  use "rose-pine/neovim"
  use "folke/tokyonight.nvim"
  use "marko-cerovac/material.nvim"

  --> cmp plugins
  use {
    "hrsh7th/nvim-cmp",
    config = function()
      require("configs.cmp").config()
    end,
  }
  use "hrsh7th/cmp-buffer"
  use "hrsh7th/cmp-path"
  use "hrsh7th/cmp-cmdline"
  use "saadparwaiz1/cmp_luasnip"
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-nvim-lua"

  --> Snippets
  use "L3MON4D3/LuaSnip"
  use "rafamadriz/friendly-snippets"

  --> LSP
  use {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lsp"
    end,
  }
  use "williamboman/nvim-lsp-installer"
  use "jose-elias-alvarez/null-ls.nvim"

  --> Telescope
  use {
    "nvim-telescope/telescope.nvim",
    config = function()
      require("configs.telescope").config()
    end,
  }
  use "nvim-telescope/telescope-media-files.nvim"

  --> TreeSitter
  use {
    "nvim-treesitter/nvim-treesitter",
    config = function()
      require("configs.treesitter").config()
    end,
    run = ":TSUpdate",
  }
  -- use "p00f/nvim-ts-rainbow"
  -- use "nvim-treesitter/playground"

  --> Git
  use {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("configs.gitsigns").config()
    end,
  }

  --> Documents/Note taking
  use {
    "nvim-neorg/neorg",
    config = function()
      require("configs.neorg").config()
    end,
  }
  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
