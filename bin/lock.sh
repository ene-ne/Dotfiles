#!/usr/bin/bash
open_widgets() {
  eww open-many user uptime lock-bat time-lock
}

close_widgets () {
eww close user
eww close uptime
eww close lock-bat 
eww close time-lock
}

sleep 1 && open_widgets & 
i3lock -u -i ~/Pictures/Wallpapers/Wall.png -n; 
close_widgets
