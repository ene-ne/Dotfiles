#!/bin/sh

 if ps ax | grep -v grep | grep spotify > /dev/null
  then
      dbus-send --type=method_call --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Previous
  else
      mpc -q prev

  fi

