#!/bin/bash

# get the display setup
STATE=$(autorandr | grep "(current)" | cut -d ' ' -f1)

case ${STATE} in
    "docked")
        $HOME/.config/wallpapers/set_docked.sh
        ;;
    "docked_open")
        $HOME/.config/wallpapers/set_docked_open.sh
        ;;
    *)
        $HOME/.config/wallpapers/set_default.sh
        ;;
esac