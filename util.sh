#!/usr/bin/env bash

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

	# Check if symlink is created
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

