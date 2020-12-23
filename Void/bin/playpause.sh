#!/bin/sh

if ps ax | grep -v grep | grep spotify > /dev/null
 then
     dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2   org.mpris.MediaPlayer2.Player.PlayPause
 else
     mpc -q toggle

 fi

