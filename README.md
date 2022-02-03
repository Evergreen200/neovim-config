# Neovim config

This is strongly inspired by the [neovim from scratch](https://github.com/lunarvim/neovim-from-scratch/tree/master) series.

```shell
git clone https://github.com/Evergreen200/neovim-config.git ~/.config/nvim
```

---

## Installation

# Dependencies

---

## Plugins used

### Basic Plugins

- [packer](https://github.com/wbthomason/packer.nvim)
- [popup](https://github.com/nvim-lua/popup.nvim)
- [plenary](https://github.com/nvim-lua/plenary.nvim)
- [nvim-autopairs](https://github.com/windwp/nvim-autopairs)
- [nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons)
- [nvim-tree](https://github.com/kyazdani42/nvim-tree.lua)
- [bufferline](https://github.com/akinsho/bufferline.nvim)
- [vim-bbye](https://github.com/moll/vim-bbye)
- [lualine](https://github.com/nvim-lualine/lualine.nvim)
- [toggleterm](https://github.com/akinsho/toggleterm.nvim)

### Colorscheme

- [rose-pine](https://github.com/rose-pine/neovim)

### Completion

- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [cmp-buffer](https://github.com/hrsh7th/cmp-buffer)
- [cmp-path](https://github.com/hrsh7th/cmp-path)
- [cmp-cmdline](https://github.com/hrsh7th/cmp-cmdline)
- [cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip)
- [cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
- [cmp-nvim-lua](https://github.com/hrsh7th/cmp-nvim-lua)

### Snippets

- [LuaSnip](https://github.com/L3MON4D3/LuaSnip)
- [friendly-snippets](https://github.com/rafamadriz/friendly-snippets)

### LSP

- [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [nvim-lsp-installer](https://github.com/williamboman/nvim-lsp-installer)

### Fuzzy Finding

- [telescope](https://github.com/nvim-telescope/telescope.nvim)
- [telescope-media-files](https://github.com/nvim-telescope/telescope-media-files.nvim)

### Syntax Highliting

- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [nvim-ts-rainbow](https://github.com/p00f/nvim-ts-rainbow)

### Git

- [gitsigns](https://github.com/lewis6991/gitsigns.nvim)

======

## TODO:

- automate plugin listing with script, which reads plugin.lua file and analysis the plugins with the help of comments (lsp, colorschemes, misc, ...) and use "..."
