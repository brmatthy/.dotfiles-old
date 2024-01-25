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
mkdir -p ~/.config/nix/nix.conf
echo "experimental-features = nix-command flakes" > ~/.config/nix/nix.conf
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
Now we can install all the packages
```sh
./install.sh
```
And install all the dotfiles
```sh
./dotfiles.sh
```

