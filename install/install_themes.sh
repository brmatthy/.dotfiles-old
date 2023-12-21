#!/bin/bash


# source utils
source $HOME/.dotfiles/install/util.sh

# install theme 
link ".local/share/themes"

# install icons
link ".local/share/icons"

# link gtk3 config
link ".config/gtk-3.0"

# for gtk4
mkdir -p "${HOME}/.config/gtk-4.0"
ln -sf "$HOME/.local/share/themes/Catppuccin/gtk-4.0/assets" "${HOME}/.config/gtk-4.0/assets"
ln -sf "$HOME/.local/share/themes/Catppuccin/gtk-4.0/gtk.css" "${HOME}/.config/gtk-4.0/gtk.css"
ln -sf "$HOME/.local/share/themes/Catppuccin/gtk-4.0/gtk-dark.css" "${HOME}/.config/gtk-4.0/gtk-dark.css"

# apply the themes
gsettings set org.gnome.desktop.interface gtk-theme Catppuccin
gsettings set org.gnome.desktop.interface cursor-theme Catppuccin-cursor
gsettings set org.gnome.desktop.interface icon-theme Papirus
