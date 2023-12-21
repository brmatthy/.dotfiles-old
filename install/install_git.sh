#!/bin/bash


# source utils
source $HOME/.dotfiles/install/util.sh

# install git if not already installed
if [[ $(installed "git") -eq 1 ]]; then
	echo "Git already installed."
else
	echo "Installing git..."
	sudo pacman -S git
fi
