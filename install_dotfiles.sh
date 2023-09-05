#/bin/bash

# make symlink to nvim config dir
ln -s $HOME/.dotfiles/.config/nvim/ $HOME/.config/

# make symlink to .gitconfig file
ln -s $HOME/.dotfiles/.gitconfig $HOME/.gitconfig

# make symlink to alacritty config dir
ln -s $HOME/.dotfiles/.config/alacritty/ $HOME/.config/

# make symlink to fonts dir
ln -s $HOME/.dotfiles/.local/share/fonts/ $HOME/.local/share/

# set the gnome keybinds
./util/gsettings.sh
