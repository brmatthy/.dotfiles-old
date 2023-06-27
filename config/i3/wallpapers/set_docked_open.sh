#!/bin/bash

IMGH1=$(./get_wallpaper.sh "horizontal")
IMGH2=$(./get_wallpaper.sh "horizontal")
IMGV=$(./get_wallpaper.sh "vertical")

# ensure that the vertical images differ
while [ "$IMGH1" = "$IMGH2" ];
do
    IMGH2=$(./get_wallpaper.sh "horizontal")
done

# first , than eDP, than DP
feh --bg-fill "$IMGV" "$IMGH1" "$IMGH2" 

