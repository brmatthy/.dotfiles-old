#!/bin/bash


# source utils
source $HOME/.dotfiles/install/util.sh

# install yay if not already installed
if [[ $(installed "yay") -eq 1 ]]; then
	echo "Yay already installed."
else
	echo "Installing yay..."
	mkdir -p temp
	cd temp
	git clone https://aur.archlinux.org/yay.git
	cd yay
	makepkg -si
	cd ../..
	rm -rf temp/
fi

