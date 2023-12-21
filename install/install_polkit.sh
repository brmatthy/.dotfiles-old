#!/bin/bash

# source utils
source $HOME/.dotfiles/install/util.sh

# install polkit if not already installed
if [[ $(installed "polkit") -eq 1 ]]; then
	echo "Polkit already installed."
else
	echo "Installing polkit..."
	sudo pacman -S polkit 
fi

# install polkit-gnome if not already installed
if [[ $(installed "polkit-gnome") -eq 1 ]]; then
	echo "Polkit-gnome already installed."
else
	echo "Installing polkit-gnome..."
	sudo pacman -S polkit-gnome 
fi
