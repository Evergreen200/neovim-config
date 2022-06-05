local utils = {}

-- usage:
-- local mod = prequire(m)
-- if mod then
-- -- done
-- end

function utils.prequire(mod)
  local ok, err = pcall(require, mod)
  if not ok then return nil end
  return err
end

function utils.bootstrap()
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

function utils.load(sources)
  for _, source in ipairs(sources) do
    local present, fault = pcall(require, source)
    if not present then
      error("Could not load " .. source .. "\n\n" .. fault)
    end
  end
end

return utils
