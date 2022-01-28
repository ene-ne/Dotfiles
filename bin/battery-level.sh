#! /bin/bash
export XDG_RUNTIME_DIR=/run/user/$(id -u)
export DISPLAY=:0.0
MIN_BAT=100
MAX_BAT=15
BAT_PERCENTAGE=`cat /sys/class/power_supply/BAT1/capacity`
low="/home/mio/.config/battery/low.mp3"
high="/home/mio/.config/battery/wow.mp3"

if [ `cat /sys/class/power_supply/BAT1/capacity` -le "$MIN_BAT" ]; then # Battery under low limit
	if [ `cat /sys/class/power_supply/BAT1/status` = "Discharging" ]; then 
 /bin/notify-send "BATTERY" "Low" -i ~/.config/battery/low.png &
 play -q -v 0.40 "$low" -t alsa
	fi
elif [ `cat /sys/class/power_supply/BAT1/capacity` = "$MAX_BAT" ]; then # Battery over high limit 
 if [ `cat /sys/class/power_supply/BAT1/status` = "Full" ]; then # plugged
## /bin/notify-send "BATTERY" "Full" -i ~/.config/battery/high.png &
## play -q -v 0.40 "$high"
exit 
 fi
 fi
