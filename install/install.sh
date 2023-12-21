#!/bin/bash

echo "Installing all programs and configurations"
echo ""
echo ""
echo "Installing dependecies"
echo ""

$HOME/.dotfiles/install/install_git.sh
$HOME/.dotfiles/install/install_yay.sh

echo ""
echo ""
echo "Installing graphical environment"
echo ""
$HOME/.dotfiles/install/install_hyprland.sh
$HOME/.dotfiles/install/install_waybar.sh
$HOME/.dotfiles/install/install_swaylock.sh

echo ""
echo ""
echo "Installing fonts icons and themes"
echo ""

$HOME/.dotfiles/install/install_fonts.sh
$HOME/.dotfiles/install/install_themes.sh


echo ""
echo ""
echo "Installing programs"
echo ""
$HOME/.dotfiles/install/install_kitty.sh
$HOME/.dotfiles/install/install_zsh.sh
$HOME/.dotfiles/install/install_neofetch.sh
$HOME/.dotfiles/install/install_nvim.sh
$HOME/.dotfiles/install/install_rofi.sh
$HOME/.dotfiles/install/install_firefox.sh
$HOME/.dotfiles/install/install_swappy.sh
$HOME/.dotfiles/install/install_hyprpaper.sh
$HOME/.dotfiles/install/install_polkit.sh
$HOME/.dotfiles/install/install_spicetify.sh

echo ""
echo ""
echo "Install display manager and greeter"
$HOME/.dotfiles/install/install_sddm.sh
echo ""


