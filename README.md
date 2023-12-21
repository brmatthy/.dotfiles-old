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

This dotfiles repo contains all my personal dotfiles and scripts to install them.

## Description

These are the dotfiles for my arch linux setup. It uses bspdm as window manager.
The entire desktop and programs follow the [catppuccin theme](https://github.com/catppuccin/catppuccin). This with the `Frappé - Peach` palette.


## Installation

In this section you can find a step by step guide on how to install the dotfiles.
I assume that you have a clean arch installation.

### 1. Setup graphical environment
For our display server we will go with [Xorg](https://wiki.archlinux.org/title/xorg). At the time of writing [Wayland](https://wiki.archlinux.org/title/wayland) simply has too many flaws.
In the following steps i will use the default config files. However my dotfiles are present in this repo if you want to use them. The install script also uses my dotfiles.

#### Install display server
```sh
sudo pacman -S xorg
```
This will install the xorg group. If you know what you are doing you may only install the xorg packages you need.

#### Install window manager
Now that `xorg` is installed we want to install our window manager. We use [bspwm](https://wiki.archlinux.org/title/bspwm).
```sh
sudo pacman -S bspwm
```

Appart from the window manager we also need a hotkey daemon to capture our keyboard an pass commands to `bspwm`.
We will be using `sxhkd`.
```sh
sudo pacman -S sxhkd
```

We have to copy the example files into the correct location so that `bspwm` and `sxhkd` can read them.

```sh
install -Dm755 /usr/share/doc/bspwm/exaples/bspwmrc ~/.config/bspwm/bspwmrc
install -Dm644 /usr/share/doc/bspwm/exaples/sxhkdrc ~/.config/sxhkd/sxhkdrc
```


We will now tell `xorg` that it must use `bspdm`.
We do this by adding it to the `~/.xinitrc` file. This is a script that gets executed on startup of `xorg`.
```sh
exec bspwm
```

#### Install [display manager](https://wiki.archlinux.org/title/displaya_manager)
This program will display a gui after boot instead of the tty. Here you can typically select what window manager you want to use.
We will use [LightDM](https://wiki.archlinux.org/title/LightDM).
```sh
sudo pacman -S lightdm
```
Appart from the display manager we will also install a greeter. This is a gui that prompts for user credentials, lets you select,
your window manger or desktop environment etc. This is the gui that will be shown at startup. We will install `lightdm-gtk-greeter`
since it is the default for `LightDM`.
```sh
sudo pacman -S lightdm-gtk-greeter
```

Now we will make sure that `LightDM` starts on starup.
```sh
sudo systemctl enable lightdm.service
```

#### Install terminal
If we log in into the graphical environment we still want access to a terminal.
Lets install a terminal emulator. We will be using [kitty](https://wiki.archlinux.org/title/kitty).


```sh
sudo pacman -S kitty
```
Now is also a good time to set your keyboard layout for xorg.
```sh
sudo localectl set-x11-keymap be
```

Now edit the `~/.config/sxhkd/sxhkdrc` file to launch kitty instead of there default terminal.

You can now reboot, and you should log into the greeter.

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
