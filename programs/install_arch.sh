#!/bin/bash

# Help message
help_message() {
    cat $HOME/.dotfiles/programs/help.txt
}

# Install Bitwarden
install_bitwarden() {
    sudo snap install bitwarden
}

# Install Discord
install_discord() {
    sudo snap install discord
}

# Install Firefox
install_firefox() {
    sudo pacman -S firefox
}

# Install Git
install_git() {
    sudo pacman -S git
}

# Install Joplin
install_joplin() {
    wget -O - https://raw.githubusercontent.com/laurent22/joplin/dev/Joplin_install_and_update.sh | bash
}

# Install Neofetch
install_neofetch() {
    sudo pacman -S neofetch
}

# Install Nvim
install_nvim() {
    sudo pacman -S neovim
}

# Install Alacritty
install_alacritty(){
    sudo pacman -S alacritty
}

# Install OneDrive CLI Client
install_onedrive() {
    echo "Ondrive install script unavailable please fix"
}


# Install Pop_OS! Shell
install_pop_shell() {
    yay -S gnome-shell-extension-pop-shell
}


# Install Spicetify
install_spicetify() {
    # Add install command for Spicetify
    echo "Spicetify install script unavailable please fix"
}

# Install Spotify
install_spotify() {
    # Add install command for Spotify
    echo "Spotify install script unavailable please fix"
}

# Main script logic
if [ $# -eq 0 ]; then
    help_message
else
    for arg in "$@"; do
        case $arg in
            -h|--help)
                help_message
                ;;
            --all)
                # Call functions for installing all programs
                ;;
            --alacritty)
                install_alacritty
                ;;
            -b|--bitwarden)
                install_bitwarden
                ;;
            -d|--discord)
                install_discord
                ;;
            -f|--firefox)
                install_firefox
                ;;
            -g|--git)
                install_git
                ;;
            -j|--joplin)
                install_joplin
                ;;
            --neofetch)
                install_neofetch
                ;;
            --nvim)
                install_nvim
                ;;
            -o|--onedrive)
                install_onedrive
                ;;
            -p|--pop-shell)
                install_pop_shell
                ;;
            --spicetify)
                install_spicetify
                ;;
            --spotify)
                install_spotify
                ;;
            *)
                echo "Unknown option: $arg"
                ;;
        esac
    done
fi
