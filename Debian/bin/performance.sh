#!/usr/bin/env bash
# Toggle compton
# Requires that you have allowed cpufreq-set to run without password.
if pgrep picom; then
    pkill picom &
    sudo cpufreq-set -g performance
    echo "ON" && notify-send "PERFORMANCE" "ON"
else
    picom -b &
    sudo cpufreq-set -g powersave
 "OFF" && notify-send "PERFORMANCE" "OFF"
fi

