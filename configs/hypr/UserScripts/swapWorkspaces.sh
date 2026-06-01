#!/bin/bash

readarray -t monitors < <(hyprctl monitors -j | jq -r '.[].name')

if [ "${#monitors[@]}" -ne 2 ]; then
    echo "This script currently supports exactly 2 monitors."
    exit 1
fi

hyprctl dispatch swapactiveworkspaces "${monitors[0]}" "${monitors[1]}"
