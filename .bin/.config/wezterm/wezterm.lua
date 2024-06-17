local wezterm = require 'wezterm'
local keybind = require 'keybindings'
local mux = wezterm.mux
local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end


-- 起動時にフルスクリーンで起動する
-- wezterm.on("gui-startup", function(cmd)
--   local tab, pane, window = mux.spawn_window(cmd or {})
--   window:gui_window():toggle_fullscreen()
-- end)

-- Color
config.color_scheme = 'nord'
config.window_background_gradient = {
  orientation = 'Vertical',
  colors = {
    '#4C566A',
    '#2E3440',
  },
}
config.colors = {
  split = '#4C566A'
}

config.use_fancy_tab_bar = false

-- Font
config.font = wezterm.font_with_fallback {
  'PlemolJP35 Console NF',
  'PlemolJP Console NF',
  'HackGen35 Console NF',
  'HackGen Console NF',
}
config.font_size = 15

-- Cursor
config.default_cursor_style = 'BlinkingBlock'

-- Window
config.window_padding = {
  left = 10,
  right = 10,
  top = 20,
  bottom = 20,
}
config.window_close_confirmation = 'NeverPrompt'

-- Pane
config.inactive_pane_hsb = {
  saturation = 0.5,
  brightness = 0.4,
}

-- Keybindings
config.disable_default_key_bindings = true
config.keys = keybind.keys
config.key_tables = keybind.key_tables


-- Functions
-- 透明-不透明の切り替え
wezterm.on("toggle-opacity", function(window)
  local overrides = window:get_config_overrides() or {}
  if not overrides.window_background_opacity then
      overrides.window_background_opacity = 1.0
  end

  if overrides.window_background_opacity >= 1.0 then
      overrides.window_background_opacity = 0.6
  else
    overrides.window_background_opacity = 1.0
  end
  window:set_config_overrides(overrides)
end)

return config