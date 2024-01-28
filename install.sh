#!/usr/bin/env bash

source ~/.dotfiles/util.sh

echo "┌─────────────────────────────────────────────────────────┐
│░█▀█░▀█▀░█░█░░░░░█▀█░█▀▀░░░░░░░░░█▀▀░█▀█░█▀█░█▀▀░▀█▀░█▀▀░│
│░█░█░░█░░▃▀▃░▀▀▀░█░█░▀▀█░░░░▀░░░░█░░░█░█░█░█░█▀▀░░█░░█░█░│
│░▀░▀░▀▀▀░▀░▀░░░░░▀▀▀░▀▀▀░░░░▀░░░░▀▀▀░▀▀▀░▀░▀░▀░░░▀▀▀░▀▀▀░│
│░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░│
│░░░░░░░░░░░░░░░Brent░Matthys░on░27-01-2024░░░░░░░░░░░░░░░│
└─────────────────────────────────────────────────────────┘
"

echo "Generating hardware-configuration..."
sudo nixos-generate-config --show-hardware-config > "$HOME/.dotfiles/nixos/hardware-configuration.nix"

echo "Backing up /etc/nixos to /etc/nixos.backup"
sudo mv /etc/nixos /etc/nixos.backup
sudo rm /etc/nixos/configuration.nix

sudo link_exact "$HOME/.dotfiles/configuration.nix" "/etc/configuration.nix"
