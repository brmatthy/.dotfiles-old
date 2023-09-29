# .dotfiles

This dotfiles repo contains all my personal dotfiles and scripts to install them.

## Description

These dotfiles are for a [gnome](https://www.gnome.org/) install combined with the [pop_os! shell](https://github.com/pop-os/shell) to obtain tiling windows. The entire desktop and programs follow the 
[catppuccin theme](https://github.com/catppuccin/catppuccin). This with the `Frappé - Peach` palette.

Having `gnome` installed prior to installing the dotfiles is a requirement. The `gnome-extra` package is no requirement. 

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

This will install all the dotfiles. Even of programs that are not installed yet. 

### Notes on installation

Under the hood symmlinks will be created on the expected dotfile locations to this repo. This repo contains these files at the expected path if this repo where the `$HOME` directory. Thus deleting this repo will break all your configurations.

If you have a configuration already presant the script will fail to create the symmlink since the file already exists. Please move your that file/dir to a backup one or move it into this repo.




## Programs

Here is a list of programs that i usually install on a new os.

- [gnome](https://www.gnome.org/)
- [pop-os shell](https://github.com/pop-os/shell)
- [git](https://git-scm.com/)
- [firefox](https://www.mozilla.org/en-US/firefox/)
- [bitwarden](https://bitwarden.com/)
- [spotify](https://www.spotify.com/us/download/android/)
- [spicetify](https://spicetify.app/)
- [discord](https://discord.com/)
- [zsh](https://www.zsh.org/)
- [joplin](https://joplinapp.org/)
- [neofetch](https://github.com/dylanaraps/neofetch)
- [nvim](https://github.com/neovim/neovim)
- [onedrive-cli-client](https://github.com/abraunegg/onedrive)
- [ranger](https://github.com/ranger/ranger)
- [inkscape](https://inkscape.org/)
- [jetbrains-toolbox](https://www.jetbrains.com/toolbox-app/):
    *[guide](https://www.jetbrains.com/help/idea/installation-guide.html#61320ad4)*
- [pop-launcher](https://github.com/pop-os/launcher)

### Post install
Due to gnome lacking some gsettings not all keybinds have been set.

Please set:

- `<Super><Enter> : terminal`
