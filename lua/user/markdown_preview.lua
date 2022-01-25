local status_ok, mp = pcall(require, "mkdp-nvim")
if not status_ok then
  vim.notify "Well... That escalated quickly!"
  return
end
