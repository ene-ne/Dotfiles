case $1 in
  up)
  light -A 5
  ;;
  down)
# Screen goes completely black at 0 this is to prevent that stop at 1
  light -U 5 
esac
