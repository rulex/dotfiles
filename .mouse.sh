#!/bin/sh

# MOUSE SETTINGS
# pointer = 1/left 2/middle 3/right 4/scrollup 5/scrolldown X X 8/back 9/forward 10/högstoppmitten?!

#xset m 3
#xmodmap -e "pointer = 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16" # default

xset m 1
xmodmap -e "pointer = 1 9 3 4 5 6 7 2 8" # logitech g400 # back -> middlem, forward -> back
# xmodmap -e "pointer = 1 9 3 4 5 6 7 2 8 10" # logitech g5 1st edition
#xinput --set-prop "Logitech Gaming Mouse G400" "Device Accel Profile" -1 # remove acceleration
#xinput --set-prop "Logitech USB Gaming Mouse" "Device Accel Profile" -1 # remove acceleration G5 first gen
xinput --set-prop "Logitech G400s Optical Gaming Mouse" "Device Accel Profile" -1 # remove acceleration

# logitech T650
#xinput set-ptr-feedback "Logitech Unifying Device. Wireless PID:4101" 10 10 4
xinput set-ptr-feedback "Logitech Rechargeable Touchpad T650" 10 10 4

