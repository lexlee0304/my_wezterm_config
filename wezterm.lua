local wezterm = require("wezterm")

local config = {
	font_size = 14,
	font = wezterm.font("JetBrainsMonoNL Nerd Font"),
	color_scheme = "Catppuccin Mocha",
	use_fancy_tab_bar = false,
	hide_tab_bar_if_only_one_tab = true,
	window_decorations = "RESIZE",
	show_new_tab_button_in_tab_bar = true,
	window_background_opacity = 0.9,
	text_background_opacity = 0,
	macos_window_background_blur = 70,
	window_padding = {
		left = 20,
		right = 20,
		top = 20,
		bottom = 5
	}
}

config.quick_select_patterns = {
	-- match things that look like sha1 hashes
	-- (this is actually one of the default patterns)
	'[0-9a-f]{7,40}',
}


config.keys = {
	{
		key = 'w',
		mods = 'CMD',
		action = wezterm.action.CloseCurrentPane { confirm = true },
	},
	{
		key = '8',
		mods = 'CMD',
		action = wezterm.action.PaneSelect,
	},
}

return config
