local M = {}

function M.config()
	local present, alpha = pcall(require, "alpha")
	if not present then
	  return
	end

	local dashboard = require "alpha.themes.dashboard"
	dashboard.section.header.val = {
	  [[                                                     ]],
	  [[  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ]],
	  [[  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ]],
	  [[  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ]],
	  [[  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ]],
	  [[  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ]],
	  [[  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ]],
	  [[                                                     ]],
	}

	dashboard.section.buttons.val = {
	  dashboard.button("f", "  Find file", ":Telescope find_files <CR>"),
	  dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
	  dashboard.button("p", "  Find project", ":Telescope projects <CR>"),
	  dashboard.button("r", "  Recently used files", ":Telescope oldfiles <CR>"),
	  dashboard.button("t", "  Find text", ":Telescope live_grep <CR>"),
	  dashboard.button("c", "  Configuration", ":e ~/.config/nvim/init.lua <CR>"),
	  dashboard.button("q", "  Quit Neovim", ":qa<CR>"),
	}

	dashboard.section.footer.val = require "alpha.fortune"

	dashboard.section.footer.opts.hl = "Type"
	dashboard.section.header.opts.hl = "Include"
	dashboard.section.buttons.opts.hl = "Keyword"

	dashboard.opts.opts.noautocmd = true
	-- vim.cmd([[autocmd User AlphaReady echo 'ready']])
	alpha.setup(dashboard.opts)
end

return M
