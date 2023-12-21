#!/bin/bash


# source utils
source $HOME/.dotfiles/install/util.sh

# install spicetify if not already installed
if [[ $(installed "spicetify-cli") -eq 1 ]]; then
	echo "Spicetify already installed."
else
	echo "Installing spicetify..."
	sudo yay -S spicetify-cli 
fi

# install gitconfig file
link ".config/spicetify"

# set theme
spicetify config current_theme catppuccin
spicetify config color_scheme frappe
spicetify config inject_css 1 inject_theme_js 1 replace_colors 1 overwrite_assets 1
spicetify apply
