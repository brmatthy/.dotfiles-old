#!/bin/bash


# source utils
source $HOME/.dotfiles/install/util.sh

# install swappy if not already installed
if [[ $(installed "swappy") -eq 1 ]]; then
	echo "Swappy already installed."
else
	echo "Installing swappy..."
	sudo pacman -S swappy 
fi

link ".config/swappy"
