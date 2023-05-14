#!/bin/bash
set -eux
msgTag="myvolume"
currentvolume="$(pactl get-sink-volume @DEFAULT_SINK@ | awk '{print $5}' | grep -Eo '[0-9]+' )"


# save yourself from a fright out of mute, set sink to 10% first
mute() {
    pactl set-sink-volume @DEFAULT_SINK@ 10%
    pactl set-sink-mute @DEFAULT_SINK@ on
}

vol_down() {
     pactl set-sink-volume @DEFAULT_SINK@ $(( currentvolume - ${currentvolume:(-1)} ))%
}

vol_up() {
     pactl set-sink-volume @DEFAULT_SINK@ $(( 10 + currentvolume - ${currentvolume:(-1)} ))%
}

# unmute first if decreasing or increasing volume 
if echo "$@" | grep -Eq '[-|+][0-9]+' ; then
    pactl set-sink-mute @DEFAULT_SINK@ off
fi

# test if current volume to 0 and that the jump is not >9 otherwise default to pactl <hotkey command>
if [[ ${currentvolume:(-1)} != 0 && $(echo "$@" | grep -Eo '[0-9]+' ) -ge 10 ]] ; then
   [ -n "$(echo "$@" | grep -Eo '\-[0-9]+' )" ] && vol_down
   [ -n "$(echo "$@" | grep -Eo '\+[0-9]+' )" ] && vol_up
   else
       pactl "$@"
fi

newvolume="$(pactl get-sink-volume @DEFAULT_SINK@ | awk '{print $5}' | grep -Eo '[0-9]+' )"

[[ $newvolume == 0 ]] && mute

dunstify -a "Volume" -u low -h string:x-dunst-stack-tag:$msgTag -h int:value:"$newvolume" "Vol:"
