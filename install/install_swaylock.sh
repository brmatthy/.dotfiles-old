#!/bin/bash


# source utils
source $HOME/.dotfiles/install/util.sh

# install swaylock if not already installed
if [[ $(installed "swaylock") -eq 1 ]]; then
	echo "Swaylock already installed."
else
	echo "Installing swaylock..."
	sudo pacman -S swaylock
fi

# install gitconfig file
link ".config/swaylock"
