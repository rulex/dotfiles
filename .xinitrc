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
( sleep 2 && sh ~/dotfiles/.xmodmap ) &
( sleep 10 && conky -c ~/dotfiles/.conkyrc ) &
#( sleep 10 && nitrogen --restore ) &
( sleep 5 && xrandr --output $(xrandr | grep " connected [0-9]" | head -n1 | cut -d' ' -f1) --primary) &
( sleep 10 && nm-applet ) &
( sleep 10 && pasystray ) &
( sleep 10 && dunst -config ~/dotfiles/.config/dunst/dunstrc ) &
urxvtd &
clipit -n &

#exec startlxde
exec i3
#exec startlxqt
#exec openbox-session

#exec openbox-kde-session
#/usr/bin/xbmc --standalone
#exec wmfs
#exec openbox-session
#exec pekwm
#exec xfce4-session


