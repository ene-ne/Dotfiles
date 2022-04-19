#!/bin/bash

case $1 in
  up)
   amixer -D pipewire set Master 5%+
   ;;
 down)
  amixer -D pipewire set Master 5%-;
esac
