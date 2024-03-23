#!/usr/bin/env sh

swayidle -w timeout 300 'swaylock -f -c 000000' \
            timeout 600 'hyprctl dispatch dpms off' \
            resume 'hyprctl dispatch dpms on' \
            resume 'pkill wlsunset' \
            resume 'wlsunset -t 7499 -T 7500' \
            #timeout 900 'systemctl suspend' \
            before-sleep 'playerctl pause' \
            before-sleep 'swaylock -f -c 000000' &
