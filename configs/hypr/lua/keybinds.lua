-- Keybindings
-- Sources: configs/Keybinds.conf (JaKooLit) + UserConfigs/UserKeybinds.conf

local home     = os.getenv("HOME")
local scripts  = home .. "/.config/hypr/scripts"
local uscripts = home .. "/.config/hypr/UserScripts"
local mod      = "SUPER"

-- Default apps (inlined from defaults.lua)
local term  = "kitty"
local files = "thunar"

local hy3 = hl.plugin.hy3

---------------------------------------------------------------------------
-- Session
---------------------------------------------------------------------------
hl.bind("CTRL + ALT + Delete", hl.dsp.exit())
hl.bind(mod .. " + Q",         hl.dsp.window.close())
hl.bind(mod .. " + SHIFT + Q", hl.dsp.window.kill())
hl.bind(mod .. " + SHIFT + N", hl.dsp.exec_cmd("swaync-client -t -sw"))
hl.bind(mod .. " + X",         hl.dsp.exec_cmd(scripts  .. "/LockScreen.sh"))
hl.bind(mod .. " + CTRL + X",  hl.dsp.exec_cmd(uscripts .. "/LockAndSuspend.sh"))

---------------------------------------------------------------------------
-- Applications
---------------------------------------------------------------------------
hl.bind(mod .. " + D",      hl.dsp.exec_cmd("pkill rofi || true && rofi -show drun -modi drun,filebrowser,run,window"))
hl.bind(mod .. " + B",      hl.dsp.exec_cmd("brave-browser --ozone-platform=wayland --enable-features=UseOzonePlatform"))
hl.bind(mod .. " + Return", hl.dsp.exec_cmd(term))
hl.bind(mod .. " + E",      hl.dsp.exec_cmd(files))
hl.bind(mod .. " + SHIFT + Return", hl.dsp.exec_cmd("[float; move 15% 5%; size 70% 60%] " .. term))

---------------------------------------------------------------------------
-- Layout (Master)
---------------------------------------------------------------------------
hl.bind(mod .. " + CTRL + D",      hl.dsp.layout("removemaster"))
hl.bind(mod .. " + I",             hl.dsp.layout("addmaster"))
hl.bind(mod .. " + J",             hl.dsp.layout("cyclenext"))
hl.bind(mod .. " + K",             hl.dsp.layout("cycleprev"))
hl.bind(mod .. " + CTRL + Return", hl.dsp.layout("swapwithmaster"))
hl.bind(mod .. " + P",             hl.dsp.window.pseudo())
hl.bind(mod .. " + M",             hl.dsp.exec_cmd("hyprctl dispatch splitratio 0.3"))

---------------------------------------------------------------------------
-- hy3 focus and window movement
---------------------------------------------------------------------------
hl.bind(mod .. " + left",  hy3.move_focus("l"))
hl.bind(mod .. " + right", hy3.move_focus("r"))
hl.bind(mod .. " + up",    hy3.move_focus("u"))
hl.bind(mod .. " + down",  hy3.move_focus("d"))

hl.bind(mod .. " + SHIFT + left",  hy3.move_window("l"))
hl.bind(mod .. " + SHIFT + right", hy3.move_window("r"))
hl.bind(mod .. " + SHIFT + up",    hy3.move_window("u"))
hl.bind(mod .. " + SHIFT + down",  hy3.move_window("d"))

hl.bind(mod .. " + T", hy3.change_group("toggletab"))

---------------------------------------------------------------------------
-- Window state
---------------------------------------------------------------------------
hl.bind(mod .. " + SHIFT + F",   hl.dsp.window.fullscreen())
hl.bind(mod .. " + CTRL + F",    hl.dsp.window.fullscreen(1))
hl.bind(mod .. " + SPACE",       hl.dsp.window.float({ action = "toggle" }))
hl.bind(mod .. " + ALT + SPACE", hl.dsp.exec_cmd("hyprctl dispatch workspaceopt allfloat"))
hl.bind(mod .. " + CTRL + O",    hl.dsp.exec_cmd("hyprctl setprop active opaque toggle"))

---------------------------------------------------------------------------
-- Groups
---------------------------------------------------------------------------
hl.bind(mod .. " + G",          hl.dsp.group.toggle())
hl.bind(mod .. " + CTRL + Tab", hl.dsp.group.next())

-- Cycle floating windows, bring to top
hl.bind("ALT + Tab", hl.dsp.window.cycle_next())
hl.bind("ALT + Tab", hl.dsp.window.bring_to_top())

---------------------------------------------------------------------------
-- Resize and swap
---------------------------------------------------------------------------
hl.bind(mod .. " + CTRL + SHIFT + left",  hl.dsp.window.resize({ x =  50, y =   0 }), { repeating = true })
hl.bind(mod .. " + CTRL + SHIFT + right", hl.dsp.window.resize({ x = -50, y =   0 }), { repeating = true })
hl.bind(mod .. " + CTRL + SHIFT + up",    hl.dsp.window.resize({ x =   0, y =  50 }), { repeating = true })
hl.bind(mod .. " + CTRL + SHIFT + down",  hl.dsp.window.resize({ x =   0, y = -50 }), { repeating = true })

hl.bind(mod .. " + ALT + left",  hl.dsp.window.swap({ direction = "left"  }))
hl.bind(mod .. " + ALT + right", hl.dsp.window.swap({ direction = "right" }))
hl.bind(mod .. " + ALT + up",    hl.dsp.window.swap({ direction = "up"    }))
hl.bind(mod .. " + ALT + down",  hl.dsp.window.swap({ direction = "down"  }))

---------------------------------------------------------------------------
-- Workspace navigation
---------------------------------------------------------------------------
hl.bind(mod ..           " + Tab", hl.dsp.focus({ workspace = "m+1" }))
hl.bind(mod .. " + SHIFT + Tab",   hl.dsp.focus({ workspace = "m-1" }))

hl.bind(mod .. " + SHIFT + U", hl.dsp.window.move({ workspace = "special" }))
hl.bind(mod .. " + U",         hl.dsp.workspace.toggle_special())
hl.bind(mod .. " + W",         hl.dsp.workspace.toggle_special("workflow"))

-- Switch / move / silent-move workspaces 1–10
-- code:10 = key 1 … code:19 = key 0 (Czech layout compatibility)
for i = 1, 10 do
    local code = "code:" .. (9 + i)
    hl.bind(mod ..              " + " .. code, hl.dsp.focus({ workspace = i }))
    hl.bind(mod .. " + SHIFT + " .. code,      hl.dsp.window.move({ workspace = i, follow = false }))
end

hl.bind(mod .. " + SHIFT + bracketleft",  hl.dsp.window.move({ workspace = "-1", follow = false }))
hl.bind(mod .. " + SHIFT + bracketright", hl.dsp.window.move({ workspace = "+1", follow = false }))

---------------------------------------------------------------------------
-- Media keys
---------------------------------------------------------------------------
hl.bind("xf86audioraisevolume", hl.dsp.exec_cmd(scripts .. "/Volume.sh --inc"),        { repeating = true, locked = true })
hl.bind("xf86audiolowervolume", hl.dsp.exec_cmd(scripts .. "/Volume.sh --dec"),        { repeating = true, locked = true })
hl.bind("xf86AudioMicMute",     hl.dsp.exec_cmd(scripts .. "/Volume.sh --toggle-mic"), { locked = true })
hl.bind("xf86audiomute",        hl.dsp.exec_cmd(scripts .. "/Volume.sh --toggle"),     { locked = true })

hl.bind("xf86AudioPause", hl.dsp.exec_cmd(scripts .. "/MediaCtrl.sh --pause"), { locked = true })
hl.bind("xf86AudioPlay",  hl.dsp.exec_cmd(scripts .. "/MediaCtrl.sh --pause"), { locked = true })
hl.bind("xf86AudioNext",  hl.dsp.exec_cmd(scripts .. "/MediaCtrl.sh --nxt"),   { locked = true })
hl.bind("xf86AudioPrev",  hl.dsp.exec_cmd(scripts .. "/MediaCtrl.sh --prv"),   { locked = true })
hl.bind("xf86audiostop",  hl.dsp.exec_cmd(scripts .. "/MediaCtrl.sh --stop"),  { locked = true })

---------------------------------------------------------------------------
-- Screenshots
---------------------------------------------------------------------------
hl.bind(mod ..                    " + Print", hl.dsp.exec_cmd(scripts .. "/ScreenShot.sh --now"))
hl.bind(mod .. " + SHIFT +        Print",     hl.dsp.exec_cmd(scripts .. "/ScreenShot.sh --area"))
hl.bind(mod .. " + CTRL +         Print",     hl.dsp.exec_cmd(scripts .. "/ScreenShot.sh --in5"))
hl.bind(mod .. " + CTRL + SHIFT + Print",     hl.dsp.exec_cmd(scripts .. "/ScreenShot.sh --in10"))
hl.bind("ALT + Print",                        hl.dsp.exec_cmd(scripts .. "/ScreenShot.sh --active"))
hl.bind(mod .. " + SHIFT + S",                hl.dsp.exec_cmd(scripts .. "/ScreenShot.sh --swappy"))

---------------------------------------------------------------------------
-- Utilities and scripts
---------------------------------------------------------------------------
hl.bind(mod .. " + H",          hl.dsp.exec_cmd(uscripts .. "/KeyHints.sh"))
hl.bind(mod .. " + ALT + R",    hl.dsp.exec_cmd(uscripts .. "/Refresh.sh"))
hl.bind(mod .. " + ALT + E",    hl.dsp.exec_cmd(scripts  .. "/RofiEmoji.sh"))
hl.bind(mod .. " + ALT + V",    hl.dsp.exec_cmd(scripts  .. "/ClipManager.sh"))
hl.bind(mod .. " + CTRL + R",   hl.dsp.exec_cmd(scripts  .. "/RofiThemeSelector.sh"))
hl.bind(mod .. " + CTRL + S",   function()
    local mons = hl.get_monitors()
    if #mons == 2 then
        hl.dispatch(hl.dsp.workspace.swap_monitors({ monitor1 = mons[1].name, monitor2 = mons[2].name }))
    end
end)
hl.bind(mod .. " + SHIFT + M",  hl.dsp.exec_cmd(uscripts .. "/RofiBeats.sh"))
hl.bind(mod .. " + SHIFT + W",  hl.dsp.exec_cmd(uscripts .. "/WallpaperSelect.sh"))
hl.bind(mod .. " + SHIFT + K",  hl.dsp.exec_cmd(scripts  .. "/KeyBinds.sh"))
hl.bind(mod .. " + SHIFT + A",  hl.dsp.exec_cmd(scripts  .. "/Animations.sh"))

-- Waybar
hl.bind(mod .. " + CTRL + ALT + B", hl.dsp.exec_cmd("pkill -SIGUSR1 waybar"))
hl.bind(mod .. " + CTRL + B",       hl.dsp.exec_cmd(scripts  .. "/WaybarStyles.sh"))
hl.bind(mod .. " + ALT + B",        hl.dsp.exec_cmd(scripts  .. "/WaybarLayout.sh"))

-- Desktop zoom
hl.bind(mod .. " + ALT + mouse_down", hl.dsp.exec_cmd(
    "hyprctl keyword cursor:zoom_factor " ..
    "\"$(hyprctl getoption cursor:zoom_factor | awk 'NR==1{f=$2; if(f<1)f=1; print f*2.0}')\""
))
hl.bind(mod .. " + ALT + mouse_up", hl.dsp.exec_cmd(
    "hyprctl keyword cursor:zoom_factor " ..
    "\"$(hyprctl getoption cursor:zoom_factor | awk 'NR==1{f=$2; if(f<1)f=1; print f/2.0}')\""
))

---------------------------------------------------------------------------
-- Mouse
---------------------------------------------------------------------------
hl.bind(mod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind(mod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })
