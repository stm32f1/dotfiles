# コマンドラインの編集モードをViにする
bindkey -v

# バックスペースキーで文字を削除する
bindkey -v '^?' backward-delete-char

# Shift-Tabで候補を逆順に補完する
bindkey '^[[Z' reverse-menu-complete

# ghq で管理しているリポジトリから検索・移動する
bindkey '^@' anyframe-widget-cd-ghq-repository

# コマンドを履歴から検索・実行する
bindkey '^r' anyframe-widget-put-history
