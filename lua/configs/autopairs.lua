local M = {}
local prequire = require("utils").core.prequire

function M.config()
  local npairs = prequire "nvim-autopairs"
  if not npairs then return end

  npairs.setup {
	  check_ts = true,
	  ts_config = {
	    lua = { "string", "source" },
	    javascript = { "string", "template_string" },
	    java = false,
	  },
	  disable_filetype = { "TelescopePrompt", "spectre_panel" },
	  fast_wrap = {
	    map = "<M-e>",
	    chars = { "{", "[", "(", '"', "'" },
	    pattern = string.gsub([[ [%'%"%)%>%]%)%}%,] ]], "%s+", ""),
	    offset = 0, -- Offset from pattern match
	    end_key = "$",
	    keys = "qwertyuiopzxcvbnmasdfghjkl",
	    check_comma = true,
	    highlight = "PmenuSel",
	    highlight_grey = "LineNr",
	  },
	}

  local cmp_autopairs = prequire "nvim-autopairs.completion.cmp"
  local cmp = prequire "cmp"
  if not cmp_autopairs or cmp then return end

  cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done { map_char = { tex = "" } })

end

return M
