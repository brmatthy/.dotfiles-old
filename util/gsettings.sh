#!/bin/bash 

# set all the used keybindings
gsettings set org.gnome.desktop.wm.keybindings close "['<Super>q']"

gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-1 "['<Shift><Super>1']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-2 "['<Shift><Super>2']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-3 "['<Shift><Super>3']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-4 "['<Shift><Super>4']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-5 "['<Shift><Super>5']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-6 "['<Shift><Super>6']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-7 "['<Shift><Super>7']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-8 "['<Shift><Super>8']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-9 "['<Shift><Super>9']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-10 "['<Shift><Super>0']"

gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-1 "['<Super>1']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-2 "['<Super>2']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-3 "['<Super>3']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-4 "['<Super>4']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-5 "['<Super>5']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-6 "['<Super>6']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-7 "['<Super>7']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-8 "['<Super>8']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-9 "['<Super>9']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-10 "['<Super>10']"

gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-down "['<Super>Down', '<Super>KP_Down', '<Super>j']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-up "['<Super>Up', '<Super>KP_Up', '<Super>k']"

gsettings set org.gnome.desktop.wm.keybindings panel-run-dialog "['<Alt>F2']"

gsettings set org.gnome.mutter.keybindings switch-monitor "['<Super>p']"

gsettings set org.gnome.shell.keybindings toggle-overview "['<Super>d']"

gsettings set org.gnome.mutter.wayland.keybindings switch-to-session-1 "['<Primary><Alt>F1']"
gsettings set org.gnome.mutter.wayland.keybindings switch-to-session-10 "['<Primary><Alt>F10']"
gsettings set org.gnome.mutter.wayland.keybindings switch-to-session-11 "['<Primary><Alt>F11']"
gsettings set org.gnome.mutter.wayland.keybindings switch-to-session-12 "['<Primary><Alt>F12']"
gsettings set org.gnome.mutter.wayland.keybindings switch-to-session-2 "['<Primary><Alt>F2']"
gsettings set org.gnome.mutter.wayland.keybindings switch-to-session-3 "['<Primary><Alt>F3']"
gsettings set org.gnome.mutter.wayland.keybindings switch-to-session-4 "['<Primary><Alt>F4']"
gsettings set org.gnome.mutter.wayland.keybindings switch-to-session-5 "['<Primary><Alt>F5']"
gsettings set org.gnome.mutter.wayland.keybindings switch-to-session-6 "['<Primary><Alt>F6']"
gsettings set org.gnome.mutter.wayland.keybindings switch-to-session-7 "['<Primary><Alt>F7']"
gsettings set org.gnome.mutter.wayland.keybindings switch-to-session-8 "['<Primary><Alt>F8']"
gsettings set org.gnome.mutter.wayland.keybindings switch-to-session-9 "['<Primary><Alt>F9']"


gsettings set org.gnome.shell.keybindings switch-to-application-1 []
gsettings set org.gnome.shell.keybindings switch-to-application-2 []
gsettings set org.gnome.shell.keybindings switch-to-application-3 []
gsettings set org.gnome.shell.keybindings switch-to-application-4 []
gsettings set org.gnome.shell.keybindings switch-to-application-5 []
gsettings set org.gnome.shell.keybindings switch-to-application-6 []
gsettings set org.gnome.shell.keybindings switch-to-application-7 []
gsettings set org.gnome.shell.keybindings switch-to-application-8 []
gsettings set org.gnome.shell.keybindings switch-to-application-9 []

dconf load /org/gnome/shell/extensions/pop-shell/ < $HOME/.dotfiles/util/pop_settings.conf
