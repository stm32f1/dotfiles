#!/usr/bin/zsh

function zle-line-init () {
	auto-fu-init
}
zle -N zle-line-init
zstyle ':completion:*' completer _oldlist _complete _approximate

# 補完の表示方法を変更する
#zstyle ':completion:*' completer _complete _match _approximate
zstyle ':completion:*' group-name ''
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*' use-cache true
zstyle ':completion:*' verbose yes
zstyle ':completion:*:default' menu select=2
zstyle ':completion:*:descriptions' format '%F{yellow}-- %d --%f'
zstyle ':completion:*:options' description 'yes'
