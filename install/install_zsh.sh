#!/bin/bash


# source utils
source $HOME/.dotfiles/install/util.sh

# install zsh if not already installed
if [[ $(installed "zsh") -eq 1 ]]; then
	echo "Zsh already installed."
else
	echo "Installing zsh..."
	sudo pacman -S zsh 
fi

# install zsh-completions if not already installed
if [[ $(installed "zsh-completions") -eq 1 ]]; then
	echo "Zsh-completions already installed."
else
	echo "Installing zsh-completions..."
	sudo pacman -S zsh-completions 
fi

if [[ "$(basename $SHELL)" = "zsh" ]]; then
	echo "Zsh already default shell"
else
	echo "Set zsh as default shell"
	chsh -s $(which zsh)
fi

link ".zshrc"
link ".config/zsh"
link ".aliases"
