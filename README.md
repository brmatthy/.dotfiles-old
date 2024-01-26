# .dotfiles

```txt
┌───────────────────────────────────┐
│░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░│
│░░░░░█░█▀█░▀█▀░█▀▀░▀█▀░█░░░█▀▀░█▀▀░│
│░░░█▀█░█░█░░█░░█▀▀░░█░░█░░░█▀░░▀▀█░│
│░▀░▀▀▀░▀▀▀░░▀░░▀░░░▀▀▀░▀▀▀░▀▀▀░▀▀▀░│
│░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░│
└───────────────────────────────────┘
```

## Installation

Start with any minimal distribution. Make sure you have sudo rights, curl and an internet connection.
We will use the nix package manager instead of the default one provided by your system.

### Install the nix package manager
```sh
sh <(curl -L https://nixos.org/nix/install) --daemon
```
Now restart the shell.
Add flakes to the nix config.
```sh
mkdir -p ~/.config/nix
echo "experimental-features = nix-command flakes" >> ~/.config/nix/nix.conf
```

Allow for unfree software
```sh
mkdir -p ~/.config/nixpkgs
echo "{ allowUnfree = true; }" >> ~/.config/nixpkgs/config.nix
```

### Setup system
Now install git
```sh
nix-env -iA nixpkgs.git
```
clone this repo and enter it
```sh
git clone git@github.com:brmatthy/.dotfiles.git ~/.dotfiles && cd ~/.dotfiles
```
Install all the dotfiles. This must happen prior to installing the packages
since some nix settings must be set for electron and obsidian.
```sh
./dotfiles.sh
```
Now we can install all the packages
```sh
./install.sh
```

### Setup base environment
The nix package manager doesn't play nice with very low system settings such as
the window manager, and display server. These will only work out of the box
using nixos.

Install the following packages to setup a base environment.
```sh
xorg lightdm lightdm-gtk-greeter i3 kitty zsh
```

Set kitty as the default terminal
```sh
sudo update-alternatives --config x-terminal-emulator
```

Set zsh as the default shell
```sh
sudo chsh -s $(which zsh)
```
