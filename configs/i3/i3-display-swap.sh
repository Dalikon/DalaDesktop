#!/usr/bin/env bash
    # requires jq

    DISPLAY_CONFIG=($(i3-msg -t get_outputs | jq -r '.[]|"\(.name):\(.current_workspace)"'))

    #echo $DISPLAY_CONFIG

    for ROW in "${DISPLAY_CONFIG[@]}"
    do
        echo "\n"
        echo $ROW
        IFS=':'
        read -ra CONFIG <<< "${ROW}"
        echo ${CONFIG[0]}
        if [ "${CONFIG[0]}" != "null" ] && [ "${CONFIG[1]}" != "null" ]; then
            if [ "${CONFIG[0]}" == "HDMI-A-1-0" ]; then
                echo "moving ${CONFIG[0]} left..."
                echo "moving ${CONFIG[1]} left..."
                i3-msg -- workspace --no-auto-back-and-forth "${CONFIG[1]}"
                i3-msg -- move workspace to output left
            elif [ "${CONFIG[0]}" == "eDP-1-0" ]; then
                echo "moving ${CONFIG[0]} right..."
                echo "moving ${CONFIG[1]} right..."
                i3-msg -- workspace --no-auto-back-and-forth "${CONFIG[1]}"
                i3-msg -- move workspace to output right
            fi
        fi
    done
