#!/bin/bash

IMG=$($HOME/.config/wallpapers/get_wallpaper.sh "$HOME/.config/wallpapers/horizontal")

feh --bg-fill "$IMG"