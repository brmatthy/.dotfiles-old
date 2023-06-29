#!/bin/bash

IMG=$(./get_wallpaper.sh "$HOME/.config/wallpapers/horizontal")

feh --bg-fill "$IMG"