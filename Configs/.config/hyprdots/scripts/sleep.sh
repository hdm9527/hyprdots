#!/usr/bin/env sh

swayidle -w timeout 300 'swaylock -f -c 000000' \
            timeout 600 'hyprctl dispatch dpms off' \
            resume '~/.config/hyprdots/scripts/wlsunset.sh' \
            timeout 900 'systemctl suspend' \
            before-sleep 'swaylock -f -c 000000'
