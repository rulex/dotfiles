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

xrdb ~/.Xdefaults

# MOUSE
sh ~/.mouse.sh &

# KEYBOARD
#sh ~/.xmodmap_noppoo &
( sleep 2 && sh ~/.xmodmap_keycool ) &


#nitrogen --restore &
( sleep 10 && conky -c ~/.conkyrc ) &
( sleep 10 && nitrogen --restore ) &
#stalonetray -bg "#000000" -t --geometry 5x1+1750+0 --window-layer bottom --sticky true -i 16 &
#tint2 &
urxvtd &
clipit -n &

#exec startlxde
exec startlxqt
#exec openbox-session

#exec openbox-kde-session
#/usr/bin/xbmc --standalone
#exec wmfs
#exec openbox-session
#exec pekwm
#exec xfce4-session


