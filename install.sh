#!/bin/bash

nix-env -iA \
  nixpkgs.xorg.xorgserver \
  nixpkgs.xorg.xrandr \
  nixpkgs.lightdm \
  nixpkgs.lightdm-gtk-greeter \
  nixpkgs.i3 \
  nixpkgs.polybar \
  nixpkgs.rofi \
  nixpkgs.git \
  nixpkgs.kitty \
  nixpkgs.zsh \
  nixpkgs.starship \
  nixpkgs.neovim \
  nixpkgs.eza \
  nixpkgs.lazygit \
  nixpkgs.firefox \
  nixpkgs.gnome.nautilus \
  nixpkgs.gnome.gnome-disk-utility \
  nixpkgs.gnome.gnome-calculator \
  nixpkgs.obsidian \
  nixpkgs.spotify \
  nixpkgs.spicetify-cli \
  nixpkgs.discord \
  nixpkgs.polkit \
  nixpkgs.polkit_gnome \
  nixpkgs.pavucontrol \
  nixpkgs.arandr \
  nixpkgs.autorandr \
