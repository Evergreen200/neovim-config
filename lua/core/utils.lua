local M = {}

function M.bootstrap()
  local fn = vim.fn
  -- Automatically install packer
  local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
  if fn.empty(fn.glob(install_path)) > 0 then
    PACKER_BOOTSTRAP = fn.system {
      "git",
      "clone",
      "--depth",
      "1",
      "https://github.com/wbthomason/packer.nvim",
      install_path,
    }
    print "Installing packer close and reopen Neovim..."
    vim.cmd [[packadd packer.nvim]]
  end
end

function M.impatient()
  local present, _
  pcall(require, "impatient")
  if present then
    require("impatient").enable_profile()
  end
end

function M.load(sources)
  for _, source in ipairs(sources) do
    local present, fault = pcall(require, source)
    if not present then
      error("Could not load " .. source .. "\n\n" .. fault)
    end
  end
end

return M
