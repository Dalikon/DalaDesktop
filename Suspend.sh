#!/bin/bash

export XDG_SEAT_PATH=/org/freedesktop/DisplayManager/Seat0
dm-tool lock &
sleep 2
systemctl suspend
exit 0

