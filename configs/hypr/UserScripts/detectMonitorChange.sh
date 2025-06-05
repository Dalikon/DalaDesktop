#!/bin/bash

MONITOR_DIR="$HOME/.config/hypr/Monitor_Profiles"
CURRENT_CONF="$HOME/.config/hypr/monitors.conf"


get_connected_outputs() {
    hyprctl monitors -j | jq -r '.[].name' | tr '\n' ' ' | sort
}

# Wait for Hyprland to be ready
until hyprctl monitors -j | jq empty >/dev/null 2>&1; do
    echo "Waiting for Hyprland to be ready..."
    sleep 1
done

PREV_OUTPUTS=$(get_connected_outputs)

while true; do
    sleep 2
    CURR_OUTPUTS=$(get_connected_outputs)

    if [[ "$CURR_OUTPUTS" != "$PREV_OUTPUTS" ]]; then
        echo "Monitor change detected: $CURR_OUTPUTS_RAW"

        COUNT=$(echo "$CURR_OUTPUTS" | tr ' ' '\n' | grep -v '^eDP-1$' | grep -c .)

        case "$COUNT" in
            0)
                echo "Only laptop monitor"
                cp "$MONITOR_DIR/laptop_only.conf" "$CURRENT_CONF"
		ln -sf "/home/dala/.config/waybar/configs/[TOP] Default Dala Laptop" /home/dala/.config/waybar/config
                ;;
            1)
                echo "One external monitor"
		ln -sf "/home/dala/.config/waybar/configs/[TOP] Default Dala Laptop" /home/dala/.config/waybar/config
                cp "$MONITOR_DIR/hdmi_only.conf" "$CURRENT_CONF"
                ;;
            2)
                echo "Two external monitors"
                cp "$MONITOR_DIR/koleje.conf" "$CURRENT_CONF"
		ln -sf "/home/dala/.config/waybar/configs/[TOP] Default Dala Koleje" /home/dala/.config/waybar/config
                ;;
            *)
                echo "Unknown configuration, using default"
                cp "$MONITOR_DIR/default.conf" "$CURRENT_CONF"
		ln -sf "/home/dala/.config/waybar/configs/[TOP] Default Dala Laptop" /home/dala/.config/waybar/config
                ;;
        esac

        hyprctl reload
	pkill waybar && waybar &

	PREV_OUTPUTS=$(get_connected_outputs)
    fi
done


