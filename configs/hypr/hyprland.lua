-- hyprland.lua — main entry point
-- Replaces hyprland.conf. Switch: rename hyprland.conf -> hyprland.conf.bak,
-- then do a full logout + login (hyprctl reload does NOT switch config files).

require("lua.env")                -- Environment variables
require("lua.startup")            -- Startup applications (exec-once)
dofile(os.getenv("HOME") .. "/.config/hypr/monitors.lua")  -- Monitor profile (managed by monitor-watcher.service)
require("lua.workspaces")         -- Workspace rules
require("lua.settings")           -- Input, misc, cursor, binds, xwayland
require("lua.theme")              -- Decorations, blur, shadows, animations
require("lua.keybinds")           -- All keybindings
require("lua.laptop_keybindings") -- Laptop fn keys, backlight, touchpad
require("lua.windowrules")        -- Window and layer rules
