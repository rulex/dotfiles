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
#T650_ID=$(xinput list | grep "Touchpad T650" | sed "s|.*id=\([0-9]\+\).*|\1|g")
xinput set-ptr-feedback "Logitech Rechargeable Touchpad T650" 10 10 4

#synclient LeftEdge=113
#synclient RightEdge=2719
#synclient TopEdge=127
#synclient BottomEdge=2237
#synclient FingerLow=2
#synclient FingerHigh=3
#synclient MaxTapTime=180
#synclient MaxTapMove=162
#synclient MaxDoubleTapTime=180
#synclient SingleTapTimeout=180
#synclient ClickTime=100
#synclient EmulateMidButtonTime=100
#synclient EmulateTwoFingerMinZ=56
#synclient EmulateTwoFingerMinW=7
#
#synclient RightButtonAreaLeft=1416
#synclient RightButtonAreaRight=0
#synclient RightButtonAreaTop=1938
#synclient RightButtonAreaBottom=0
#synclient MiddleButtonAreaLeft=1416
#synclient MiddleButtonAreaRight=0
#synclient MiddleButtonAreaTop=1938
#synclient MiddleButtonAreaBottom=0

xset m 4 4

