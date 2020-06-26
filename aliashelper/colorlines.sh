#!/bin/bash
#By MachineLearninja
#Script colors the lines of input alternating in two colors
thisdir=$(dirname $0)
source $thisdir/aliashelper.settings

#color1="\e[32m"
#color2="\e[33m"

lastcolor=$color1
currentcolor=$color2
while read -r line; do
        if [ $lastcolor == $color1 ]; then
                currentcolor=$color2
        else
                currentcolor=$color1
        fi

        printf "%b%s%b\n" "$currentcolor" "$line" "\e[0m"

        lastcolor=$currentcolor
done < "${1:-/dev/stdin}"
