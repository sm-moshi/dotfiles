# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

### Customize to your needs...

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
else
   export EDITOR='nvim'
fi
# Aliases
alias grep="grep --color=auto"
alias ls="ls --color=auto"
alias diff="diff --color=auto"
alias ip="ip -color=auto"
alias cat="bat"
alias genlop="sudo watch -cn 2 genlop -ci"

# to use Fsync for Wine
export WINEFSYNC=1 
# use most instead of more or less
export PAGER="most"
# changing shell language
#export LANG=en_US.UTF-8
#export LANGUAGE=en
export LANG=de_DE.UTF-8
export LANGUAGE=de
# Let Firefox use KDE/Dolphin File selector
export GTK_USE_PORTAL=1
# Let Firefox use Wayland
export MOZ_ENABLE_WAYLAND=1
###

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
