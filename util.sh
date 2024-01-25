#!/bin/bash

link_exact() {
	echo -n "Creating symlink for \"$1\" : "

	# Check if you should create symlink
	if [[ ! -e $1 ]]; then
		echo "Does not exists."
		return
	fi
	if [[ -e $2 ]]; then
		echo "Already present."
		return
	fi

	# Create the symlink
	ln -s $1 $2

	# Cehck if symlink is created
	if [[ -e $2 ]]; then
		echo "DONE"
	else
		echo "FAILED"
	fi
}

# creates a symlink from the dotfile
# repo to the config location
# The link will be from the root of the dotfiles repo
# If you pass ".config/myprogram" you will link:
# $HOME/.dotfiles/.config/myprogram to
# $HOME/.config/myprogram
link() {
	link_exact "$HOME/.dotfiles/$1" "$HOME/$1"
}


# Checks if a package is installed
# Usage: $(installed "pkg_name") -eq 1
# @return 1 if the package is installed
# @return 0 if the package is not installed
installed() {
	if [[ -z "$(pacman -Q $1 2> /dev/null)" ]]; then
		echo 0
	else
		echo 1
	fi	
}

