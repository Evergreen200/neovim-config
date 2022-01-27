local options = {
  wrap = true,
}

for k, v in pairs(options) do
  vim.opt[k] = v
end
