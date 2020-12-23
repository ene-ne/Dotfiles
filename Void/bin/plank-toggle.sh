#!/usr/bin/env zsh
if pgrep plank
then
	pkill plank
else 
	plank &

fi



