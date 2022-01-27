local default_colorscheme = "rose-pine"

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

for k, c in pairs(colorschemes) do
  status_ok, _ = pcall(require, c)
  if not status_ok then
    vim.notify("colorscheme " .. c .. " not found!")
  end
end

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. default_colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. default_colorscheme .. " not found!")
  return
end
