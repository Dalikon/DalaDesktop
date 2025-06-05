#!/bin/bash

# Get the window ID of the currently focused window
WIN_ID=$(hyprctl activewindow -j | jq -r '.pid')

# Find the working directory of the focused terminal process
if [ -d "/proc/$WIN_ID/cwd" ]; then
    CWD=$(readlink -f /proc/$WIN_ID/cwd)
else
    CWD="$HOME"
fi

# Launch a new terminal in that directory (change for your terminal)
kitty --directory "$CWD"

