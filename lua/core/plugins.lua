local utils = require("utils").core

-- install 'packer.nvim' if not already installed
utils.bootstrap()

local present, packer = pcall(require, "packer")
if not present then
  vim.notify("Plugin " .. packer .. " could not be loaded.")
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

-- Install plugins here
return packer.startup(function(use)
  -- Packer
  use "wbthomason/packer.nvim"
  use "nvim-lua/popup.nvim"
  use "nvim-lua/plenary.nvim"

  -- *Core Functionality*
  -- cmp plugins -> Completion
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

  -- Snippets
  use "L3MON4D3/LuaSnip"
  use "rafamadriz/friendly-snippets"

  -- Icons
  use "kyazdani42/nvim-web-devicons"
  use {
    "kyazdani42/nvim-tree.lua",
    config = function()
      require("configs.nvim-tree").config()
    end,
  }

  use {
    "akinsho/bufferline.nvim",
    config = function()
      require("configs.bufferline").config()
    end,
  }

  use "moll/vim-bbye"

  -- **Autopairs**
  use {
    "windwp/nvim-autopairs",
    config = function()
      require("configs.autopairs").config()
    end,
  }

  use {
    "nvim-treesitter/nvim-treesitter",
    config = function()
      -- local ts = utils.prequire("configs.treesitter")
      -- if ts then ts.config() end
      require("configs.treesitter").config()
    end,
    run = ":TSUpdate",
  }

  -- LSP
  use {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lsp"
    end,
  }
  use "williamboman/nvim-lsp-installer"
  use "jose-elias-alvarez/null-ls.nvim"

  -- Telescope
  use {
    "nvim-telescope/telescope.nvim",
    config = function()
      require("configs.telescope").config()
    end,
  }
  use "nvim-telescope/telescope-media-files.nvim"
  -- ---------------
  -- Aesthetics
  use "rose-pine/neovim"

  -- Automatically set up the configuration after cloning 'packer.nvim'
  -- Must be after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
