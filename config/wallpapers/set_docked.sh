#!/bin/bash

IMGH=$($HOME/.config/wallpapers/get_wallpaper.sh "$HOME/.config/wallpapers/horizontal")
IMGV=$($HOME/.config/wallpapers/get_wallpaper.sh "$HOME/.config/wallpapers/vertical")

# first eDP, than HDMI, than DP
feh --bg-fill "$IMGH" "$IMGV"