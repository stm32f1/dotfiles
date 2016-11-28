#!/bin/bash


if [ ! -d $HOME/.zplug ]; then
	curl -sL zplug.sh/installer | zsh
fi


DOT_FILES=(.zshrc .bashrc .gitattributes .gdbinit .vimrc .nanorc .tmux.conf)

for file in ${DOT_FILES[@]}
do
	if echo $file | grep /; then
		mkdir -p $HOME/`echo $file | awk -F "/" 'BEGIN {OFS="/"} {NF--; print $0}'`
	fi
		ln -s $HOME/dotfiles/$file $HOME/$file
done

if [ ! -d ~/.local/share/fonts/RictyDiminished-for-Powerline ]; then
	mkdir -p ~/.local/share/fonts/RictyDiminished-for-Powerline
	git clone https://github.com/mzyy94/RictyDiminished-for-Powerline.git ~/.local/share/fonts/RictyDiminished-for-Powerline
fi

if [ ! -d ~/.vim/bundle ]; then
	mkdir -p ~/.vim/bundle && git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim && vim -c ':NeoBundleInstall'
fi
