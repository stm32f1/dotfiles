#!/usr/bin/zsh

source ~/.zplug/init.zsh

## LANGUAGE and THEME ##
case "$TERM" in
     "linux")
	export LANG=C
        zplug "themes/wedisagree",   from:oh-my-zsh
	;;
     *)
	export LANG=ja_JP.UTF-8
	zplug "themes/agnoster",   from:oh-my-zsh
          ;;
esac


## TMUX ##
if [[ ! -n $TMUX && $- == *l* ]]; then
  # get the IDs
  ID="`tmux list-sessions`"
  if [[ -z "$ID" ]]; then
    tmux new-session
  fi
  create_new_session="Create New Session"
  ID="$ID\n${create_new_session}:"
  ID="`echo $ID | $PERCOL | cut -d: -f1`"
  if [[ "$ID" = "${create_new_session}" ]]; then
    tmux new-session
  elif [[ -n "$ID" ]]; then
    tmux attach-session -t "$ID"
  else
    :  # Start terminal normally
  fi
fi


## ZPLUG ##
zplug "plugins/git",   from:oh-my-zsh
zplug "k4rthik/git-cal", as:command
zplug "plugins/sudo", from:oh-my-zsh
zplug "plugins/zsh_reload", from:oh-my-zsh
zplug "zsh-users/zsh-history-substring-search"
zplug "zsh-users/zsh-completions"

#zplug "modules/prompt", from:prezto
#zplug "lib/clipboard", from:oh-my-zsh, if:"[[ $OSTYPE == *darwin* ]]"

zplug "tcnksm/docker-alias", use:zshrc

#ZPLUG_SUDO_PASSWORD="****"
zplug "jhawthorn/fzy", \
    as:command, \
    rename-to:fzy, \
    hook-build:"
    {
        make
        sudo make install
    } &>/dev/null
    "

zplug "mollifier/anyframe"
zplug "junegunn/fzf-bin", \
    from:gh-r, \
    as:command, \
    rename-to:fzf, \
    use:"*darwin*amd64*"
zplug "b4b4r07/enhancd"

zplug "b4b4r07/79ee61f7c140c63d2786", \
    from:gist, \
    as:command, \
    use:get_last_pane_path.sh

# Support bitbucket
zplug "b4b4r07/hello_bitbucket", \
    from:bitbucket, \
    as:command, \
    hook-build:"chmod 755 *.sh", \
    use:"*.sh"

zplug "stedolan/jq", \
    from:gh-r, \
    as:command
zplug "b4b4r07/emoji-cli", \
    on:"stedolan/jq"

# local plugins
zplug "~/dotfiles/zsh", from:local

#high lights
zplug "zsh-users/zsh-syntax-highlighting", defer:2

# Install plugins
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

zplug load
