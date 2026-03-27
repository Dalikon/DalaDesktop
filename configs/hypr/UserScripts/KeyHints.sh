#!/bin/bash
# /* ---- 💫 https://github.com/JaKooLit 💫 ---- */  ##
# GDK BACKEND. Change to either wayland or x11 if having issues
BACKEND=wayland
# Check if rofi or yad is running and kill them if they are
if pidof rofi > /dev/null; then
  pkill rofi
fi
if pidof yad > /dev/null; then
  pkill yad
fi

entries=(
    "ESC"                           "close this app"                        ""
    #"SPR = "                        "SUPER KEY (Windows Key Button)"        "(SUPER KEY)"
    "SPR SHIFT K"                   "Searchable Keybinds"                   "(Search all Keybinds via rofi)"
    #"SPR SHIFT E"                   "KooL Hyprland Settings Menu"           ""
    ""                              ""                                      ""
    "SPR enter"                     "Terminal"                              "(kitty)"
    "SPR SHIFT enter"               "DropDown Terminal"                     " Q to close"
    "SPR B"                         "Launch Browser"                        "(Default browser)"
    #"SPR A"                       "Desktop Overview"                      "(AGS - if opted to install)"
    "SPR D"                         "Application Launcher"                  "(rofi-wayland)"
    "SPR E"                         "Open File Manager"                     "(Thunar)"
    #"SPR S"                         "Google Search using rofi"              "(rofi)"
    "SPR Q"                         "close active window"                   "(not kill)"
    "SPR Shift Q"                   "kills an active window"                "(kill)"
    "SPR ALT scroll up/down"        "Desktop Zoom"                          "Desktop Magnifier"
    "SPR Alt V"                     "Clipboard Manager"                     "(cliphist)"
    #"SPR W"                         "Choose wallpaper"                      "(Wallpaper Menu)"
    #"SPR Shift W"                   "Choose wallpaper effects"              "(imagemagick + swww)"
    #"CTRL ALT W"                    "Random wallpaper"                      "(via swww)"
    "SPR CTRL ALT B"                "Hide/UnHide Waybar"                    "waybar"
    #"SPR CTRL B"                    "Choose waybar styles"                  "(waybar styles)"
    #"SPR ALT B"                     "Choose waybar layout"                  "(waybar layout)"
    "SPR ALT R"                     "Reload Waybar swaync Rofi"             "CHECK NOTIFICATION FIRST!!!"
    "SPR SHIFT N"                   "Launch Notification Panel"             "swaync Notification Center"
    "SPR Print"                     "screenshot"                            "(grim)"
    "SPR Shift Print"               "screenshot region"                     "(grim + slurp)"
    "SPR Shift S"                   "screenshot region"                     "(swappy)"
    "SPR CTRL Print"                "screenshot timer 5 secs"               "(grim)"
    "SPR CTRL SHIFT Print"          "screenshot timer 10 secs"              "(grim)"
    "ALT Print"                     "Screenshot active window"              "active window only"
    #"CTRL ALT P"                    "power-menu"                            "(wlogout)"
    #"CTRL ALT L"                    "screen lock"                           "(hyprlock)"
    "CTRL ALT Del"                  "Hyprland Exit"                         "(NOTE: Hyprland Will exit immediately)"
    "SPR SHIFT F"                   "Fullscreen"                            "Toggles to full screen"
    "SPR CTRL F"                    "Fake Fullscreen"                       "Toggles to fake full screen"
    #"SPR ALT L"                     "Toggle Dwindle | Master Layout"        "Hyprland Layout"
    "SPR SPACEBAR"                  "Toggle float"                          "single window"
    "SPR ALT SPACEBAR"              "Toggle all windows to float"           "all windows"
    "SPR ALT O"                     "Toggle Blur"                           "normal or less blur"
    "SPR CTRL O"                    "Toggle Opaque ON or OFF"               "on active window only"
    #"SPR Shift A"                   "Animations Menu"                       "Choose Animations via rofi"
    #"SPR CTRL R"                    "Rofi Themes Menu"                      "Choose Rofi Themes via rofi"
    #"SPR CTRL Shift R"              "Rofi Themes Menu v2"                   "Choose Rofi Themes via Theme Selector (modified)"
    #"SPR SHIFT G"                   "Gamemode! All animations OFF or ON"    "toggle"
    "SPR ALT E"                     "Rofi Emoticons"                        "Emoticon"
    "SPR H"                         "Launch this Quick Cheat Sheet"         ""
    #""                              ""                                      ""
    #"More tips:"                    "https://github.com/JaKooLit/Hyprland-Dots/wiki" ""
)
# Launch yad with calculated width and height
GDK_BACKEND=$BACKEND yad \
    --center \
    --title="KooL Quick Cheat Sheet" \
    --no-buttons \
    --list \
    --column=Key: \
    --column=Description: \
    --column=Command: \
    --timeout-indicator=bottom \
    "${entries[@]}"
