# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored _approximate
zstyle :compinstall filename '/home/brent/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt autocd beep extendedglob
bindkey -v
# End of lines configured by zsh-newuser-install
source ~/.config/zsh/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.config/zsh/p10k.zsh ]] || source ~/.config/zsh/p10k.zsh

# source aliases
ALIASFILE=~/.aliases
source $ALIASFILE
function aa() {
    if [[ -z $1 || -z $2 || $# -gt 2 ]]; then
        echo "[ aa - Add Alias ]"
        echo "usage: $0 alias 'command'"
    else
        echo "alias $1='$2'" >> $ALIASFILE
        source $ALIASFILE
        echo "alias $1 ADDED to $ALIASFILE"
    fi
}

# syntax highlighting
source $HOME/.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $HOME/.config/zsh/catppuccin_frappe-zsh-syntax-highlighting.zsh

EDITOR=$(which nvim)

[ -f "/home/brent/.ghcup/env" ] && source "/home/brent/.ghcup/env" # ghcup-env