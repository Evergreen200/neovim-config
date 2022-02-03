-- require "user.neorg"
-- require "user.markdown_preview"

local utils = require "core.utils"

local sources = {
  "core.options",
  "core.autocommands",
  "core.keymaps",
  "core.plugins",
  "user.colorscheme",
  "user.nvim-tree",
}

utils.load(sources)
utils.impatient()
-- utils.compiled()
