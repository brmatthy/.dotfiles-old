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
This is a dotfiles repo for use with nixos, but it could also be used with any distribution

- `install.sh`: Link the nixos config files.
- `dotfiles.sh`: Link the program config files.

## Installation
Clone this repo 
```shell
git clone https://github.com/brmatthy/.dotfiles.git ~/.dotfiles
```

Init the submodules
```sh
git submodule update --init --recursive
```

### Install the dotfiles for the programs
```shell
./dotfiles.sh
```

### Install nixos config
Link the config files for nixos
```sh
./install.sh
```
Rebuild the system using this config.
```shell
sudo nixos-rebuild switch
```
