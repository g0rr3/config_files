#!/bin/sh
if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

xrandr --output eDP1 --mode 1366x768 --pos 0x156 --rotate normal --output DP1 --off --output HDMI1 --mode 1920x1080 --primary --pos 1366x0 --rotate normal --output VIRTUAL1 --off
setxkbmap de
dwm-setstatus &
~/.fehbg &
exec dwm
