local status_ok, notify = pcall(require, "notify")

if not status_ok then
  return
end

notify.setup {
  -- Animation style
  stages = "fade_in_slide_out",

  -- Function called when a new window is opened, use for changing win settings/config
  on_open = nil,

  -- Function called when a window is closed
  on_close = nil,

  -- Render function for notifycations
  render = "default",

  -- Default timeout for notifications
  timeout = 3000,

  -- For stages that changes opacity this is treated as the hightlight behind the window
  -- Set this to either a hightlight group, an RGB hex value e.g. "#000000" or a function returning an RGB code for dynamic values
  --background_colour = "Normal",
  background_colour = "#000000",

  -- Minimum width for notification windows
  minimum_width = 50,

  -- Icons
  icons = {
    ERROR = "",
    WARN = "",
    INFO = "",
    DEBUG = "",
    TRACE = "✎",
  },
}

vim.notify = require "notify"
