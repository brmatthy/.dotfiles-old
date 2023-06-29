#!/bin/bash

IMGH=$(./get_wallpaper.sh "$HOME/.config/wallpapers/horizontal")
IMGV=$(./get_wallpaper.sh "$HOME/.config/wallpapers/vertical")

# first eDP, than HDMI, than DP
feh --bg-fill "$IMGH" "$IMGV"