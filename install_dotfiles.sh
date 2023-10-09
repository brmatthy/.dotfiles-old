#/bin/bash

# make symlink to icons dir
ln -s $HOME/.dotfiles/.local/share/icons/ $HOME/.local/share/

# make symlink to themes dir and make symlink to gtk4
ln -s $HOME/.dotfiles/.local/share/themes/ $HOME/.local/share/
mkdir -p "${HOME}/.config/gtk-4.0"
ln -sf "${HOME}/.local/share/themes/Catppuccin-Frappe-Compact-Peach-Dark/gtk-4.0/assets" "${HOME}/.config/gtk-4.0/assets"
ln -sf "${HOME}/.local/share/themes/Catppuccin-Frappe-Compact-Peach-Dark/gtk-4.0/gtk.css" "${HOME}/.config/gtk-4.0/gtk.css"
ln -sf "${HOME}/.local/share/themes/Catppuccin-Frappe-Compact-Peach-Dark/gtk-4.0/gtk-dark.css" "${HOME}/.config/gtk-4.0/gtk-dark.css"

# make symlink to fonts dir
ln -s $HOME/.dotfiles/.local/share/fonts/ $HOME/.local/share/

# make symlink to nvim config dir
ln -s $HOME/.dotfiles/.config/nvim/ $HOME/.config/

# make symlink to .gitconfig file
ln -s $HOME/.dotfiles/.gitconfig $HOME/.gitconfig

# make symlink to .zshrc file
ln -s $HOME/.dotfiles/.zshrc $HOME/.zshrc

# make symlink to .p10k.zsh file
ln -s $HOME/.dotfiles/.p10k.zsh $HOME/.p10k.zsh

# make symlink to alacritty config dir
ln -s $HOME/.dotfiles/.config/alacritty/ $HOME/.config/

# make symlink to alacritty config dir
ln -s $HOME/.dotfiles/.config/tmux/ $HOME/.config/

# make symlink to spicetify config dir
ln -s $HOME/.dotfiles/.config/spicetify/ $HOME/.config/

# make symlink to ulauncher config dir
ln -s $HOME/.dotfiles/.config/ulauncher/ $HOME/.config/

# set the gnome keybinds
./util/gsettings.sh
