#!/bin/sh

modeline=$(cvt -v 2560 1440 | grep Modeline | sed -e "s/Modeline //")
echo $modeline
xrandr --newmode ${modeline}
modename=$(echo $modeline | awk '{ print $1; }')
xrandr --addmode Virtual-1 $modename

modeline=$(cvt -v 3024 1964 | grep Modeline | sed -e "s/Modeline //")
echo $modeline
xrandr --newmode ${modeline}
modename=$(echo $modeline | awk '{ print $1; }')
xrandr --addmode Virtual-1 $modename

modeline=$(cvt -v 5120 2880 | grep Modeline | sed -e "s/Modeline //")
echo $modeline
xrandr --newmode ${modeline}
modename=$(echo $modeline | awk '{ print $1; }')
xrandr --addmode Virtual-1 $modename
