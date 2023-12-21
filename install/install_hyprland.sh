#!/bin/bash

# source utils
source $HOME/.dotfiles/install/util.sh

# install hyprland if not already installed
if [[ $(installed "hyprland") -eq 1 ]]; then
	echo "Hyprland already installed."
else
	echo "Installing hyprland..."
	sudo pacman -S hyprland
fi

# install wlr-randr if not already installed
if [[ $(installed "wlr-randr") -eq 1 ]]; then
	echo "Wlr-randr already installed."
else
	echo "Installing wlr-randr..."
	yay -S wlr-randr
fi

# install config
link ".config/hypr" 
