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
#export LANG="en_US.iso-88591"
export LC_NUMERIC="sv_SE.iso-88591"
export LC_COLLATE="C"
export LC_TIME="sv_SE.iso-88591"
export LC_MONETARY="sv_SE.iso-88591"
export LC_MEASUREMENT="sv_SE.iso-88591"
export LC_CTYPE="sv_SE.iso-88591"
export LC_MESSAGES="en_US.iso-88591"

xrdb ~/.Xdefaults

# MOUSE
# pointer = 1/left 2/middle 3/right 4/scrollup 5/scrolldown X X 8/back 9/forward 10/högstoppmitten?!
xset m 2 2
#xmodmap -e "pointer = 1 9 3 4 5 6 7 2 8" # logitech g400 # back -> middlem, forward -> back
# xmodmap -e "pointer = 1 9 3 4 5 6 7 2 8 10" # logitech g5 1st edition
xinput --set-prop "Logitech Gaming Mouse G400" "Device Accel Profile" -1 # remove acceleration
xinput --set-prop "Logitech USB Gaming Mouse" "Device Accel Profile" -1 # remove acceleration

# KEYBOARD
setxkbmap se
xset r 77  # delete key
xset r 113
xset r 116
xset r rate 300 35
xset -b # disable pc speaker
#sh ~/.xmodmap_noppoo &
sh ~/.xmodmap_keycool &


#nitrogen --restore &
#( sleep 10 && conky -c ~/.conkyrc ) &
#( sleep 10 && nitrogen --restore ) &
( ( sleep 10 && /usr/bin/xscreensaver -no-splash -display :0.0 ) & )
#stalonetray -bg "#000000" -t --geometry 5x1+1750+0 --window-layer bottom --sticky true -i 16 &
#tint2 &
urxvtd &
clipit -n &
nm-applet &

exec startlxde
#exec openbox-session
#exec openbox-kde-session
#/usr/bin/xbmc --standalone
#exec wmfs
#exec openbox-session
#exec pekwm
#exec xfce4-session


