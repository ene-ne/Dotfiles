#!/bin/sh

    
case "$(echo "Shutdown\nRestart\nLogout\nSuspend\nLock" | dmenu \
    -i -p \
    "Power:")" in
        Shutdown) loginctl poweroff;;
        Restart)  loginctl reboot;;
        Logout) herbstclient quit;;
        Suspend) loginctl suspend;;
        Lock) loginctl lock-session $XDG_SESSION_ID
esac

