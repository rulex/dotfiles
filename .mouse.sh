#!/bin/sh

# MOUSE SETTINGS
# pointer = 1/left 2/middle 3/right 4/scrollup 5/scrolldown X X 8/back 9/forward 10/högstoppmitten?!
xset m 1
xmodmap -e "pointer = 1 9 3 4 5 6 7 2 8" # logitech g400 # back -> middlem, forward -> back
# xmodmap -e "pointer = 1 9 3 4 5 6 7 2 8 10" # logitech g5 1st edition
xinput --set-prop "Logitech Gaming Mouse G400" "Device Accel Profile" -1 # remove acceleration
xinput --set-prop "Logitech USB Gaming Mouse" "Device Accel Profile" -1 # remove acceleration

