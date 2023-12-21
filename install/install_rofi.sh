#!/bin/bash


# source utils
source $HOME/.dotfiles/install/util.sh

# install rofi if not already installed
if [[ $(installed "rofi") -eq 1 ]]; then
	echo "Rofi already installed."
else
	echo "Installing rofi..."
	sudo yay -S rofi-lbonn-wayland-git
fi

# install gitconfig file
link ".config/rofi"
