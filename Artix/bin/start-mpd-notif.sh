#!/usr/bin/env zsh 
sleep 30

if pgrep mpd-notificatio
then
	notify-send "MPD" "UP"

else
	mpd-notification &
fi

