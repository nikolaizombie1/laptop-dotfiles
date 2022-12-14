#source ~/powerlevel10k/powerlevel10k.zsh-theme
eval "$(starship init zsh)"

# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/zsh/history

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

alias LS="cd /home/uwu/Linux-Storage/"
alias Downloads="cd /home/uwu/Linux-Storage/Downloads/"
alias update="yay -Syu"
alias ls="ls -lah -t --color"
alias zshrc="vim /home/uwu/.zshrc"
alias waifu2x="waifu2x-ncnn-vulkan"
alias Music="cd /home/uwu/Linux-Storage/Downloads/Music/"
alias c='clear'
alias ff='firefox'
alias install='sudo pacman -S'
alias remove='sudo pacman -Rns'
alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'
alias doom="./.emacs.d/bin/doom"
alias wd="wol 44:8A:5B:CE:75:8A"
alias vim="nvim"
alias wd="wol 44:8A:5B:CE:75:8A"

autoload -Uz up-line-or-beginning-search down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

[[ -n "${key[Up]}"   ]] && bindkey -- "${key[Up]}"   up-line-or-beginning-search
[[ -n "${key[Down]}" ]] && bindkey -- "${key[Down]}" down-line-or-beginning-search

path+=(~/Scripts/)
path+=(~/.emacs.d/bin/)
path+=(~/Scripts/)
path+=(~/'.local'/bin/)
path+=(~/.cargo/bin/)

# Load zsh-syntax-highlighting; should be last.
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh 2>/dev/null

