local utils = require "utils"

local sources = {
  "core.options",
  "core.autocommands",
  "core.keymaps",
  "core.plugins",
  "user.config",
}

utils.core.load(sources)
