#!/bin/bash

TRANSPARENCY=0.8

# generates zathura configuration file

for x in "$(xrdb -query | grep color[0-9] | sed "s/^\*//g" | sed "s/.*\./export /g;s/:\s*/=\"/g;s/$/\"/g")"; do eval "$x"; done

background=$color0
foreground=$color12

hex=$(echo $background | sed 's/#//g') # remove hash sign

default_bg_transparent=$(printf "rgba(%d,%d,%d,%.2f)" \
  0x${hex:0:2} 0x${hex:2:2} 0x${hex:4:2} $TRANSPARENCY)

recolor_lightcolor_transparent='rgba(0,0,0,0)' # totally clear

cat <<CONF
set completion-bg "$background"
set completion-fg "$foreground"
set completion-group-bg "$background"
set completion-group-fg "$color2"
set completion-highlight-bg "$foreground"
set completion-highlight-fg "$background"
set default-bg "$default_bg_transparent"
set default-fg "$foreground"
set inputbar-bg "$background"
set inputbar-fg "$foreground"
set notification-bg "$background"
set notification-fg "$foreground"
set notification-error-bg "$color1"
set notification-error-fg "$foreground"
set notification-warning-bg "$color1"
set notification-warning-fg "$foreground"
set statusbar-bg "$background"
set statusbar-fg "$foreground"
set index-bg "$background"
set index-fg "$foreground"
set index-active-bg "$foreground"
set index-active-fg "$background"
set render-loading-bg "$background"
set render-loading-fg "$foreground"

set window-title-home-tilde true
set statusbar-basename true
set selection-clipboard clipboard

set recolor true
set recolor-darkcolor "$color7"
set recolor-lightcolor "$recolor_lightcolor_transparent"
CONF

#set smooth-scroll true
