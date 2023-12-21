#!/bin/bash

# source utils
source $HOME/.dotfiles/install/util.sh

# install hyprpaper if not already installed
if [[ $(installed "hyprpaper") -eq 1 ]]; then
	echo "Hyprpaper already installed."
else
	echo "Installing hyprpaper..."
	sudo pacman -S hyprpaper
fi

# install config
link ".config/hypr" 
