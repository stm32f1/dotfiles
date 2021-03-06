# some more ls aliases
alias ll='ls -alF --color'
alias la='ls -A --color'
alias l='ls -CF --color'
alias less='less -R'

alias off='shutdown -h now'
alias rb='shutdown -r now'
alias cdu='cd-gitroot'

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

#alias cp='cp -iv'
#alias mv='mv -iv'
#alias rm='rm -iv'
alias a='./a.out'
alias q='exit'
alias e='exit'
alias main='vim main.c'
alias vimrc='vim ~/.vimrc'
alias bashrc='vim ~/.bashrc'
alias zshrc='vim ~/.zshrc'
alias ascii='man ascii'
alias src='source ~/.bashrc'
alias vi='vim'
alias sudo='sudo '
alias memo='cat - > /dev/null'
alias screen='screen -q'
alias gdb='gdb -q'
alias clisp='clisp -q'
alias lisp='sbcl --script'
alias maker='make | grep error'
alias tmux='tmux -2'
#alias platex='platex --kanji=utf8'
alias google='google-chrome-stable'
alias chrome='google-chrome-stable'
alias xctu='~/tools/digi/XCTU-NG/launcher'
alias minecraft='java -jar ~/games/minecraft/minecraft.jar'
alias gspull='git subtree pull --prefix=$1 $2 master --squash'
alias gspush='git subtree push --prefix=$1 $2 master --squash'
alias fix_network='sudo service network-manager restart'
alias uart='cu -l /dev/ttyUSB0 -s 115200'
alias uart1='cu -l /dev/ttyUSB1 -s 115200'

