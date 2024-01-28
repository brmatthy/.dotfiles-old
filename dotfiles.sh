#!/usr/bin/env bash

source ~/.dotfiles/util.sh

echo "┌───────────────────────────────────┐
│░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░│
│░░░░░█░█▀█░▀█▀░█▀▀░▀█▀░█░░░█▀▀░█▀▀░│
│░░░█▀█░█░█░░█░░█▀▀░░█░░█░░░█▀░░▀▀█░│
│░▀░▀▀▀░▀▀▀░░▀░░▀░░░▀▀▀░▀▀▀░▀▀▀░▀▀▀░│
│░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░│
└───────────────────────────────────┘"
mkdir -p ~/.config

link ".xinitrc"

link ".gitconfig"
link ".zshrc"
link ".aliases"

link ".local/share/fonts"
link ".local/share/icons"
link ".local/share/themes"
link ".gtkrc-2.0"
link_exact "$HOME/.dotfiles/.local/share/themes/Catppuccin/gtk-4.0" "$HOME/.config/gtk-4.0"

link ".config/kitty"
link ".config/neofetch"
link ".config/nvim"
link ".config/rofi"
link ".config/spicetify"
link ".config/zsh"
link ".config/i3"
link ".config/polybar"
link ".config/nix"
link ".config/nixpkgs"
link ".config/starship"
link ".config/hypr"
link ".config/waybar"
