#!/bin/sh
# $Xorg: xinitrc.cpp,v 1.3 2000/08/17 19:54:30 cpqbld Exp $

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then
	xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
	xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
	xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
	xmodmap "$usermodmap"
fi

# LOCALE
export LANG="en_US.iso-88591"
export LC_NUMERIC="sv_SE.iso-88591"
export LC_COLLATE="C"
export LC_TIME="sv_SE.iso-88591"
export LC_MONETARY="sv_SE.iso-88591"
export LC_MEASUREMENT="sv_SE.iso-88591"
export LC_CTYPE="sv_SE.iso-88591"
export LC_MESSAGES="en_US.iso-88591"

xrdb ~/.Xdefaults
setxkbmap se
# pointer = 1/left 2/middle 3/right 4/scrollup 5/scrolldown X X 8/back 9/forward 10/högstoppmitten?!
xmodmap -e "pointer = 1 9 3 4 5 6 7 2 8" # logitech g400 # back -> middlem, forward -> back
# xmodmap -e "pointer = 1 9 3 4 5 6 7 2 8 10" # logitech g5 1st edition
#xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'

# NOPPOO CHOC MINI
xmodmap -e 'clear Lock' -e 'keycode 0x42 = Control_R' -e 'add control = Control_R' # remap caps to left control
xmodmap -e 'keycode 77 = Delete' # numlock to delete
xmodmap -e 'keycode 78 = Insert' # scroll lock to insert
xmodmap -e 'keycode 119 = End' # del to end
xmodmap -e 'keycode 127 = Home' # pause to home
xmodmap -e 'keycode  45 = k K k K less dead_ogonek less' # altgr k to <
xmodmap -e 'keycode  46 = l L l L greater dead_abovedot greater' # altgr l to >
xmodmap -e 'keycode  61 = minus underscore minus underscore bar dead_abovedot bar' # altgr - to |
xmodmap -e 'keycode  31 = i I i I braceleft idotless braceleft' # altgr i to {
xmodmap -e 'keycode  32 = o O o O braceright OE braceright' # altgr o to }
xset r 77  # delete key
xset r 113
xset r 116
xset r rate 300 35
xset m 1 1
xinput --set-prop "Logitech Gaming Mouse G400" "Device Accel Profile" -1 # remove acceleration
xinput --set-prop "Logitech USB Gaming Mouse" "Device Accel Profile" -1 # remove acceleration

#nitrogen --restore &
( sleep 10 && conky -c ~/.conkyrc ) &
( sleep 10 && nitrogen --restore ) &
#stalonetray -bg "#000000" -t --geometry 5x1+1750+0 --window-layer bottom --sticky true -i 16 &
tint2 &
urxvtd &
clipit -n &

exec openbox-session
#exec openbox-kde-session
#/usr/bin/xbmc --standalone
#exec wmfs
#exec openbox-session
#exec pekwm
#exec xfce4-session


