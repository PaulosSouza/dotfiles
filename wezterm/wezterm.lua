local dracula = require 'dracula';
local wezterm = require 'wezterm';

return {
    -- Fonts and colors
    font=wezterm.font('FiraCode Nerd Font'),
    font_size=14,
    colors=dracula,

    -- TabBar
    tab_bar_at_bottom=true,
    use_fancy_tab_bar=false,
    tab_max_width=24,

    -- Window
    window_padding = {
        top= 2,
    },

    -- Keysbind
    keys = {
        -- ActivatePaneDirection
        {
            key="h",
            mods="CTRL",
            action=wezterm.action { ActivatePaneDirection="Left" }
        },
        {
            key="l",
            mods="CTRL",
            action=wezterm.action { ActivatePaneDirection="Right" }
        }, 
        {
            key="k",
            mods="CTRL",
            action=wezterm.action { ActivatePaneDirection="Up" }
        },
        {
            key="j",
            mods="CTRL",
            action=wezterm.action { ActivatePaneDirection="Down" }
        },

        -- Splits
        {
            key="T",
            mods="ALT|SHIFT",
            action=wezterm.action { SplitHorizontal={ domain="CurrentPaneDomain" } }
        },

        -- Resize Window
        {
            key="LeftArrow",
            mods="CTRL|SHIFT",
            action=wezterm.action { AdjustPaneSize={ "Left", 1 } }
        },
        {
            key="RightArrow",
            mods="CTRL|SHIFT",
            action=wezterm.action { AdjustPaneSize={ "Right", 1 } }
        },
        {
            key="DownArrow",
            mods="CTRL|SHIFT",
            action=wezterm.action { AdjustPaneSize={ "Down", 1 } }
        },
        {
            key="UpArrow",
            mods="CTRL|SHIFT",
            action=wezterm.action { AdjustPaneSize={ "Up", 1 } }
        },

        -- TogglePane
        {
            key="z",
            mods="CTRL",
            action="TogglePaneZoomState"
        }
    }
}
