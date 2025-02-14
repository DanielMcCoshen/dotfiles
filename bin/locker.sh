#!/bin/bash -e
swayidle \
    timeout 10 'swaymsg "output * dpms off"' \
    resume 'swaymsg "output * dpms on"' &
# Locks the screen immediately
swaylock --image /home/daniel/Pictures/The-Night-Sky-Wallpaper.jpg --scaling=fill
# Kills all but one swayidle instance so that idle timer doesn't keep running
#for proc in $(pgrep swayidle |sed '1d'); do kill $proc; done
killall swayidle
