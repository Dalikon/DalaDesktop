#!/bin/bash

# Get list of monitors and their active workspaces
readarray -t lines < <(hyprctl monitors -j | jq -r '.[] | "\(.name) \(.activeWorkspace.id)"')

# If there are not exactly two active monitors, abort
if [ "${#lines[@]}" -ne 2 ]; then
    echo "This script currently supports exactly 2 monitors."
    exit 1
fi

# Parse data
MON1=$(echo "${lines[0]}" | cut -d' ' -f1)
WS1=$(echo "${lines[0]}" | cut -d' ' -f2)

MON2=$(echo "${lines[1]}" | cut -d' ' -f1)
WS2=$(echo "${lines[1]}" | cut -d' ' -f2)

# Perform the swap
hyprctl dispatch moveworkspacetomonitor "$WS1" "$MON2"
hyprctl dispatch moveworkspacetomonitor "$WS2" "$MON1"

