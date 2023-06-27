#!/bin/bash

IMGH=$(./get_wallpaper.sh "horizontal")
IMGV=$(./get_wallpaper.sh "vertical")

# first eDP, than HDMI, than DP
feh --bg-fill "$IMGV" "$IMGH"