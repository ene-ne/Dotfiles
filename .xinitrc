#!/bin/sh
pipewire &
spotifyd --no-daemon &
mpd &
exec dbus-run-session herbstluftwm --locked
