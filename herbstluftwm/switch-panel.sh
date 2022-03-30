#!/usr/bin/bash
herbstclient --idle  2>/dev/null | {
  while true; do
work=$(herbstclient tag_status | tr -s '[:blank:]' '\n' | grep \# | sed 's/[^0-9]*//g')
  if [ $(herbstclient get_attr tags.by-name."$work".floating) = "false" ]; then
   eww close float 
   eww open bar
  else
    eww close bar
    eww open float
  fi 
read -r || break
done
}
