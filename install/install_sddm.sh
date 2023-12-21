#!/bin/bash

# source utils
source $HOME/.dotfiles/install/util.sh

# install sdd if not already installed
if [[ $(installed "sddm") -eq 1 ]]; then
	echo "Sddm already installed."
else
	echo "Installing sddm..."
	sudo pacman -S sddm 
	# install theme dependencies
	sudo pacman -S --needed qt5-graphicaleffects qt5-svg qt5-quickcontrols2 > /dev/null

	# Symmlink the theme dir
	sudo cp -r /home/brent/.dotfiles/sddm/themes /usr/share/sddm/themes
	sudo cp /home/brent/.dotfiles/sddm/default.conf /usr/lib/sddm/sddm.conf.d/
fi


