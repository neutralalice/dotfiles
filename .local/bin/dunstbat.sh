#!/bin/bash
set -eux
msgtag="batlevellow"
while [ true ] ; do
	batlevel=($(echo "($(cat /sys/class/power_supply/BAT0/capacity)+($(cat /sys/class/power_supply/BAT1/capacity))/2)") | $bc)
        if [ $batlevel -le 15 ] ; then
            exec dunstify -a batterylevel -u critical -h string:value:"lowbat" "Battery is less than 15%!";
            break;
        else
            sleep 45s;
        fi
done
