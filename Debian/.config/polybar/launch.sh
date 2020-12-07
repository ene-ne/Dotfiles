pkill polybar
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
polybar burs &
polybar burs2 &
polybar burs3 &
