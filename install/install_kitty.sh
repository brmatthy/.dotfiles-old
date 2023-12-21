#!/bin/bash


# source utils
source $HOME/.dotfiles/install/util.sh

# install kitty if not already installed
if [[ $(installed "kitty") -eq 1 ]]; then
	echo "kitty already installed."
else
	echo "Installing kitty..."
	sudo pacman -S kitty
fi

# install gitconfig file
link ".config/kitty"
