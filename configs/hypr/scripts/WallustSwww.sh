#!/bin/bash
# /* ---- 💫 https://github.com/JaKooLit 💫 ---- */  ##
# Wallust Colors for current wallpaper

# Initialize a flag to determine if the ln command was executed
ln_success=false

# Get current focused monitor
current_monitor=$(hyprctl monitors -j | jq -r '.[] | select(.focused) | .name')
echo $current_monitor

# Get wallpaper path via swww query (swww 0.9+ uses binary cache — grep is broken)
wallpaper_path=$(swww query | grep "^: ${current_monitor}:" | sed 's/.*currently displaying: image: //')
echo $wallpaper_path

# Check if we got a valid wallpaper path
if [ -n "$wallpaper_path" ] && [ -f "$wallpaper_path" ]; then
    # symlink the wallpaper to the location Rofi can access
    if ln -sf "$wallpaper_path" "$HOME/.config/rofi/.current_wallpaper"; then
        ln_success=true
    fi
    # copy the wallpaper for wallpaper effects
    cp -r "$wallpaper_path" "$HOME/.config/hypr/wallpaper_effects/.wallpaper_current"
fi

# Check the flag before executing further commands
if [ "$ln_success" = true ]; then
    echo 'about to execute wallust'
    wallust run "$wallpaper_path" -s &
fi
