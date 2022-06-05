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

  -- **Autopairs**
  use {
    "windwp/nvim-autopairs",
    config = function()
      require("configs.autopairs").config()
    end,
  }

  -- use {
  --   "nvim-treesitter/nvim-treesitter",
  --   config = function()
  --     -- local ts = utils.prequire("configs.treesitter")
  --     -- if ts then ts.config() end
  --     require("configs.treesitter").config()
  --   end,
  --   run = ":TSUpdate",
  -- }
  -- ---------------
  -- Aesthetics
  use "rose-pine/neovim"

  -- Automatically set up the configuration after cloning 'packer.nvim'
  -- Must be after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
