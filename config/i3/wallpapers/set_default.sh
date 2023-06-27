#!/bin/bash

IMG=$(./get_wallpaper.sh "horizontal")

feh --bg-fill "$IMG"

echo "default"