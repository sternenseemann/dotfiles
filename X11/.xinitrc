#!/bin/bash
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

# Add .Xresources
xrdb -merge ~/.Xresources

# bind some nice keys
xbindkeys

# Escape instead of caps lock!
setxkbmap -option caps:escape
# Disable Mouse 3
xmodmap -e "pointer = 1 25 3 4 5 6 7 8 9" 

# redshift
redshift -c ~/.redshift &

pulseaudio --start

# desktop background
# xsetroot -solid '#74C365'
feh --bg-max ~/Pictures/wallpaper/deepspace-55.jpg

dunst &

start_i3() {
	exec i3
}

start_bspwm() {
	dbus-launch --auto-syntax --exit-with-session bspwm
	sxhkd &

	cbatticon &

	xsetroot -cursor_name left_ptr

	$HOME/.config/bspwm/bar &

	exec bspwm
}

start_i3
