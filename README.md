# .dotfiles

This dotfiles repo contains all my personal dotfiles, scripts to install them, and scripts to install all my commonly used programs.

## Description

These dotfiles are for a [gnome](https://www.gnome.org/) install combined with the [pop_os! shell](https://github.com/pop-os/shell) to obtain tiling windows. The entire desktop and programs follow the 
[catppuccin theme](https://github.com/catppuccin/catppuccin). This with the `Frappé - Peach` palette.

Having gnome installed prior to installing the dotfiles is advised, but not needed.

## Installation

The installation process is split into three steps.


### 1. Clone repo

First clone this repo locally

```sh
git clone git@github.com:brmatthy/.dotfiles.git
```

Make sure that the repo is cloned to `$HOME/.dotfiles`. Otherwise the
installation will fail.

### 2. Install dotfiles
First the dotfiles can be installed. This can be done by running the following command.

```sh
./install_dotfiles.sh
```

This will install all the dotfiles. Even of programs that are not installed yet. Under the hood symmlinks will be created on the expected dotfile locations to this repo. Thus deleting this repo will break all your configurations.

### 3. Install programs

Next one can install the programs that use the dotfiles.
Depending on the OS you are using please use a different install script.
The scripts are found in the `programs` folder.

```sh
# naming
programs/install_osname.sh
```

If no install script is available for your distribution, please create one. Before doing so please read the [programs readme](/programs/README.md). Currently the following distributions are supported

#### Fedora
```sh
./programs/install_fedora.sh
```


## Programs
Here is a list of the programs that will be installed.
Please use the `-h` option to see all the install options.
This way you can install only some programs.

- [gnome](https://www.gnome.org/)
- [pop-os shell](https://github.com/pop-os/shell)
- [git](https://git-scm.com/)
- [firefox](https://www.mozilla.org/en-US/firefox/)
- [bitwarden](https://bitwarden.com/)
- [spotify](https://www.spotify.com/us/download/android/)
- [spicetify](https://spicetify.app/)
- [discord](https://discord.com/)
- [zsh](https://www.zsh.org/)
- [jetbrains-toolbox](https://www.jetbrains.com/toolbox-app/)
- [joplin](https://joplinapp.org/)
- [neofetch](https://github.com/dylanaraps/neofetch)
- [nvim](https://github.com/neovim/neovim)
- [onedrive-cli-client](https://github.com/abraunegg/onedrive)
- [ranger](https://github.com/ranger/ranger)
- [inkscape](https://inkscape.org/)

If you add a programm please add it to this list, to all the program install scripts and the program help message.
