local utils = {}

local core_utils = require "utils.core"
local user_utils = core_utils.prequire("utils.user")

-- utils that are essential for core functionalities
utils.core = core_utils

-- utils with other useful stuff
utils.user = user_utils

return utils

-------------------------------------------

-- local present, core_utils = pcall(require, "utils.core")
--
-- 
-- if not present then
--   vim.notify "Core utils not available."
--   return
-- end


-- if user_utils then
--   utils.user = user_utils
-- else
--   vim.notify("utils.user not available.")
-- end
