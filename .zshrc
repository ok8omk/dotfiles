export EDITOR=vim
export LANG=ja_JP.UTF-8

bindkey -v

autoload -U compinit; compinit
setopt auto_list
setopt auto_menu
setopt list_packed
setopt list_types
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

powerline-daemon -q
. $HOME/.local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh
