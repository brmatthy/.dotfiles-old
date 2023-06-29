#!/bin/bash

# get the display setup
STATE=$(autorandr | grep "(current)" | cut -d ' ' -f1)

case ${STATE} in
    "docked")
        ./set_docked.sh
        ;;
    "docked_open")
        ./set_docked_open.sh
        ;;
    *)
        ./set_default.sh
        ;;
esac