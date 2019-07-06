#!/bin/bash


# 1 - get all inkscape windows
WINDOWS=$(xwininfo -tree -root | grep Inkscape | awk '{print $1}')
echo $WINDOWS

# 2 - through each one
for window in $WINDOWS
do
    xdotool windowmove $window 0 0
done
