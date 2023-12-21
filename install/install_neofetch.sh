#!/bin/bash


# source utils
source $HOME/.dotfiles/install/util.sh

# install neofetch if not already installed
if [[ $(installed "neofetch") -eq 1 ]]; then
	echo "Neofetch already installed."
else
	echo "Installing neofetch..."
	sudo pacman -S neofetch
fi

# install config files
link ".config/neofetch"
