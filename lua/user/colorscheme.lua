local default_colorscheme = require("user.settings").colorscheme

local colorschemes = {
  "rose-pine",
  "tokyonight",
  "material",
}
local g = vim.g

--> Rose-Pine
g.rose_pine_variant = "moon"

--> Tokyonight
g.tokyonight_style = "storm"

--> Material
g.material_style = "deep ocean"

for _, c in pairs(colorschemes) do
  local present, _ = pcall(require, c)
  if not present then
    vim.notify("colorscheme " .. c .. " not found!")
  end
end

local present, _ = pcall(vim.cmd, "colorscheme " .. default_colorscheme)
if not present then
  vim.notify("colorscheme " .. default_colorscheme .. " not found!")
  return
end
