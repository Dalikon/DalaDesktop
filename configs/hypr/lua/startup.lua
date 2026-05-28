-- Startup applications (exec-once equivalents)
-- Migrated from: UserConfigs/Startup_Apps.conf

local home    = os.getenv("HOME")
local scripts = home .. "/.config/hypr/scripts"

hl.on("hyprland.start", function()
    -- Wallpaper daemon
    hl.exec_cmd("swww-daemon --format xrgb")

    -- DBus / systemd environment propagation
    hl.exec_cmd("dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")
    hl.exec_cmd("systemctl --user import-environment WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")

    -- Polkit authentication agent
    hl.exec_cmd(scripts .. "/Polkit.sh")

    -- System tray and notification
    hl.exec_cmd("nm-applet --indicator")
    hl.exec_cmd("swaync")
    hl.exec_cmd("blueman-applet")
    hl.exec_cmd("sunsetr")
    hl.exec_cmd("solaar")

    -- Clipboard history
    hl.exec_cmd("wl-paste --type text  --watch cliphist store")
    hl.exec_cmd("wl-paste --type image --watch cliphist store")

    -- Idle / lock daemon
    hl.exec_cmd("hypridle")

    -- Load plugins and apply any deferred config
    hl.exec_cmd("hyprpm reload -n")
    hl.exec_cmd("hyprctl reload -n")
end)
