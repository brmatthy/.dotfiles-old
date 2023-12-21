#!/bin/bash

# source utils
source $HOME/.dotfiles/install/util.sh

# install waybar if not already installed
if [[ $(installed "waybar") -eq 1 ]]; then
	echo "Waybar already installed."
else
	echo "Installing waybar..."
	sudo pacman -S waybar
fi

# install pamixer if not already installed
if [[ $(installed "pamixer") -eq 1 ]]; then
	echo "Pamixer already installed."
else
	echo "Installing pamixer..."
	sudo pacman -S pamixer 
fi


# install pavucontrol if not already installed
if [[ $(installed "pavucontrol") -eq 1 ]]; then
	echo "Pavucontrolalready installed."
else
	echo "Installing pavucontrol..."
	sudo pacman -S pavucontrol
fi

# install config
link ".config/waybar" 
