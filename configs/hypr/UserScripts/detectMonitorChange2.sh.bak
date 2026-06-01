#!/bin/bash

CONFIGURE_DELAY=0.25
TMP_FLAG="/tmp/hypr_monitor_event"
MONITOR_DIR="$HOME/.config/hypr/Monitor_Profiles"
CURRENT_CONF="$HOME/.config/hypr/monitors.conf"
WALLPAPER="$HOME/Pictures/wallpapers/BKG2.jpg"

configure_monitors() {
    sleep 1

    MONITORS_JSON=$(echo "j/monitors" | socat - UNIX-CONNECT:$XDG_RUNTIME_DIR/hypr/$HYPRLAND_INSTANCE_SIGNATURE/.socket.sock)
    echo $MONITORS_JSON
    if [[ "$MONITORS_JSON" == *"[]"* ]] || \
        echo "$MONITORS_JSON" | jq -e '(( [.[] | .id] | sort ) == [0]) or (any(.[]; .name == "FALLBACK"))' > /dev/null; then
        echo "Only laptop setup"
        cp "$MONITOR_DIR/laptop_only.conf" "$CURRENT_CONF"
		ln -sf "/home/dala/.config/waybar/configs/[TOP] Default Dala Laptop" /home/dala/.config/waybar/config

    elif echo "$MONITORS_JSON" | jq -e '( [.[] | .id] | sort ) == [0,1,2]' > /dev/null; then
        echo "Dual monitor home setup"
        cp "$MONITOR_DIR/koleje.conf" "$CURRENT_CONF"
		ln -sf "/home/dala/.config/waybar/configs/[TOP] Default Dala Koleje" /home/dala/.config/waybar/config

    elif echo "$MONITORS_JSON" | jq -e '( [.[] | .id] | sort ) == [0,1]' > /dev/null; then
        echo "Single external monitor setup"
        ln -sf "/home/dala/.config/waybar/configs/[TOP] Default Dala Laptop" /home/dala/.config/waybar/config
        cp "$MONITOR_DIR/hdmi_only.conf" "$CURRENT_CONF"
    fi

    systemctl --user restart waybar.service
    hyprctl reload
    sleep $CONFIGURE_DELAY
    swww img "$WALLPAPER" --outputs "$(echo "$MONITORS_JSON" | jq -r '.[].name' | paste -sd, -)"
}

schedule_configuration() {
    if [ -f "$TMP_FLAG" ]; then
        touch "$TMP_FLAG"
        return
    fi

    touch "$TMP_FLAG"
    (
        while true; do
            sleep 1
            now=$(date +%s)
            modified=$(stat -c %Y "$TMP_FLAG")
            if (( now - modified >= 1 )); then
                break
            fi
        done
        configure_monitors
        rm -f "$TMP_FLAG"
    ) &
}


handle() {
    line="$1"
    event="${line%%>*}"
    data="${line#*>}"
    data="${data#>}"

    if [[ "$event" == "monitoraddedv2" || "$event" == "monitorremovedv2" ]]; then
        schedule_configuration
    fi
   }

socat -U - UNIX-CONNECT:$XDG_RUNTIME_DIR/hypr/$HYPRLAND_INSTANCE_SIGNATURE/.socket2.sock | while read -r line; do handle "$line"; done
