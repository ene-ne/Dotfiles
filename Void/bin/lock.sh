#!/bin/bash
icon="$HOME/.config/lock/artix.png"
img="$HOME/.cache/i3lock/1366x768/l_dimblur.png"
convert $img $icon -gravity Center -composite $img
i3lock -u -i $img

