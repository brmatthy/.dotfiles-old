#/bin/bash

# make symlink to icons dir
ln -s $HOME/.dotfiles/.local/share/icons/ $HOME/.local/share/

# make symlink to themes dir
ln -s $HOME/.dotfiles/.local/share/themes/ $HOME/.local/share/

# make symlink to fonts dir
ln -s $HOME/.dotfiles/.local/share/fonts/ $HOME/.local/share/

# make symlink to nvim config dir
ln -s $HOME/.dotfiles/.config/nvim/ $HOME/.config/

# make symlink to .gitconfig file
ln -s $HOME/.dotfiles/.gitconfig $HOME/.gitconfig

# make symlink to alacritty config dir
ln -s $HOME/.dotfiles/.config/alacritty/ $HOME/.config/

# make symlink to nvim config dir
ln -s $HOME/.dotfiles/.config/nvim/ $HOME/.config/

# make symlink to ulauncher config dir
ln -s $HOME/.dotfiles/.config/ulauncher/ $HOME/.config/

# set the gnome keybinds
./util/gsettings.sh
