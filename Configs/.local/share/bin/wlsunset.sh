#!/usr/bin/env sh

pidof wlsunset
[ $? -eq 0 ] && pkill wlsunset
wlsunset -t 7499 -T 7500 &
