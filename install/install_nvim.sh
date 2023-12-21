#!/bin/bash


# source utils
source $HOME/.dotfiles/install/util.sh

# install nvim if not already installed
if [[ $(installed "neovim") -eq 1 ]]; then
	echo "Nvim already installed."
else
	echo "Installing nvim..."
	sudo pacman -S neovim
fi

# install gitconfig file
link ".config/nvim"
