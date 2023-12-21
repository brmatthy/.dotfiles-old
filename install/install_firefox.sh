#!/bin/bash


# source utils
source $HOME/.dotfiles/install/util.sh

# install firefox if not already installed
if [[ $(installed "firefox") -eq 1 ]]; then
	echo "Firefox already installed."
else
	echo "Installing firefox..."
	sudo pacman -S firefox
fi

