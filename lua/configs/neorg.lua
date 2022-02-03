local M = {}

function M.config()
  local present, neorg = pcall(require, "neorg")
  if not present then
    return
  end

  neorg.setup {
    load = {
      ["core.defaults"] = {}, -- Load all the default modules
      ["core.norg.concealer"] = {}, -- Allows for use of icons
      ["core.norg.dirman"] = { -- Manage your directories with Neorg
        config = {
          workspace = {
            my_workspace = "~/neorg",
          },
        },
      },
      ["core.norg.completion"] = {
        config = {
          engine = "nvim-cmp",
        },
      },
    },
  }
end

return M
