#!/bin/bash

vol="$(amixer get Master | grep %| awk /Left/'{print}'|awk '{print $5}'|sed 's/[^0-9]//g')"
mute="$(amixer get Master | grep off)"

if [[ ! -z $mute ]];
then
  echo "muted"
else
  echo $vol%
fi


