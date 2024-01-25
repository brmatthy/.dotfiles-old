#!/bin/bash

source ~/.dotfiles/util.sh

echo "┌───────────────────────────────────┐
│░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░│
│░░░░░█░█▀█░▀█▀░█▀▀░▀█▀░█░░░█▀▀░█▀▀░│
│░░░█▀█░█░█░░█░░█▀▀░░█░░█░░░█▀░░▀▀█░│
│░▀░▀▀▀░▀▀▀░░▀░░▀░░░▀▀▀░▀▀▀░▀▀▀░▀▀▀░│
│░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░│
└───────────────────────────────────┘"

link ".xinitrc"

link ".gitconfig"
link ".zshrc"
link ".aliases"

link ".local/share/fonts"
link ".local/share/icons"
link ".local/share/themes"

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
