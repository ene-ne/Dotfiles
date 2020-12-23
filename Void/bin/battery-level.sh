#! /bin/bash
export XDG_RUNTIME_DIR=/run/user/$(id -u)
export DISPLAY=:0.0
MIN_BAT=15
MAX_BAT=100
BAT_PERCENTAGE=`cat /sys/class/power_supply/BAT0/capacity`
low="/home/ryan/.config/battery/omaewa.ogg"
high="/home/ryan/.config/battery/wow.mp3"

if [ `cat /sys/class/power_supply/BAT0/capacity` -le "$MIN_BAT" ]; then # Battery under low limit
	if [ `cat /sys/bus/acpi/drivers/battery/PNP0C0A:00/power_supply/BAT0/status` = "Discharging" ]; then 
 /bin/notify-send "BATTERY" "Low" -i ~/.config/battery/low.png &
 play -q -v 0.40 "$low"
	fi
elif [ `cat /sys/class/power_supply/BAT0/capacity` == "$MAX_BAT" ]; then # Battery over high limit 
 if [ `cat /sys/bus/acpi/drivers/battery/PNP0C0A:00/power_supply/BAT0/status` = "Full" ]; then # plugged
## /bin/notify-send "BATTERY" "Full" -i ~/.config/battery/high.png &
## play -q -v 0.40 "$high"
exit 
 fi
 fi
