autoload -Uz add-zsh-hook

# コマンドのオプションや引数を補完する
autoload -Uz compinit && compinit -u

# URLをエスケープする
autoload -Uz url-quote-magic

# VCS情報の表示を有効にする
autoload -Uz vcs_info
