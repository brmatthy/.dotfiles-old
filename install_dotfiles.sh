#/bin/bash

# make symlink to icons dir
ln -s $HOME/.dotfiles/.local/share/icons/ $HOME/.local/share/

# make symlink to nvim config dir
ln -s $HOME/.dotfiles/.config/nvim/ $HOME/.config/

# make symlink to .gitconfig file
ln -s $HOME/.dotfiles/.gitconfig $HOME/.gitconfig

# make symlink to alacritty config dir
ln -s $HOME/.dotfiles/.config/alacritty/ $HOME/.config/

# make symlink to fonts dir
ln -s $HOME/.dotfiles/.local/share/fonts/ $HOME/.local/share/

# make symlink to rofi config dir
ln -s $HOME/.dotfiles/.config/rofi/ $HOME/.config/

# install gtk theme
yay -S catppuccin-gtk-theme-frappe
mkdir -p "${HOME}/.config/gtk-4.0"
ln -sf "${THEME_DIR}/gtk-4.0/assets" "${HOME}/.config/gtk-4.0/assets"
ln -sf "${THEME_DIR}/gtk-4.0/gtk.css" "${HOME}/.config/gtk-4.0/gtk.css"
ln -sf "${THEME_DIR}/gtk-4.0/gtk-dark.css" "${HOME}/.config/gtk-4.0/gtk-dark.css"

# set the gnome keybinds
./util/gsettings.sh
