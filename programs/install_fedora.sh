#!/bin/bash

# Help message
help_message() {
    cat $HOME/.dotfiles/programs/help.txt
}

# Install Bitwarden
install_bitwarden() {
    sudo snap install bitwarden
}

# Install Visual studio code
install_vsc() {
    sudo dnf install code
}

# Install Discord
install_discord() {
    sudo snap install discord
}

# Install Firefox
install_firefox() {
    sudo dnf install firefox
}

# Install Git
install_git() {
    sudo dnf install git
}

# Install Inkscape
install_inkscape() {
    sudo dnf install inkscape
}

# Install Joplin
install_joplin() {
    wget -O - https://raw.githubusercontent.com/laurent22/joplin/dev/Joplin_install_and_update.sh | bash
}

# Install Neofetch
install_neofetch() {
    sudo dnf install neofetch
}

# Install Nvim
install_nvim() {
    sudo dnf install -y neovim python3-neovim
}

# Install OneDrive CLI Client
install_onedrive() {
    sudo dnf install oneDrive
}

# Install Pop_OS! Shell
install_pop_shell() {
    sudo dnf install gnome-shell-extension-pop-shell xprop
}

# Install Ranger
install_ranger() {
    sudo dnf install ranger
}

# Install Spicetify
install_spicetify() {
    # Add install command for Spicetify
}

# Install Spotify
install_spotify() {
    # Add install command for Spotify
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
            -a|--all)
                # Call functions for installing all programs
                ;;
            -b|--bitwarden)
                install_bitwarden
                ;;
            -c|--code)
                install_vsc
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
            -i|--inkscape)
                install_inkscape
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
            -r|--ranger)
                install_ranger
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
