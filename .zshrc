# Created by newuser for 5.0.2 
# zplug {{{
source ~/.zplug/init.zsh

zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-history-substring-search"
zplug "sindresorhus/pure"
zplug "mafredri/zsh-async"
zplug "peco/peco"

if ! zplug check --verbose; then
  printf "Install? [y/N]: "
  if read -q; then
    echo; zplug install
  fi
fi

zplug load --verbose
# }}}

alias vi='vim -p'
alias vim='vim -p'
alias sudo='sudo -E'
alias gcc='gcc -O2 -Wall'
alias g++='g++-6 -O2 -Wall'
alias g++11='g++-6 -std=c++11 -O2 -Wall'
alias g++14='g++-6 -std=c++14 -O2 -Wall'
alias l='ls -G'
alias ls='ls -G'

# 大文字小文字区別しない
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
# 上下左右に補完選択
zstyle ':completion:*:default' menu select=2
# キャッシュを使ってコマンド高速化
zstyle ':completion:*' use-cache true

export PATH=/anaconda/bin:$PATH
export PATH=$HOME/.nodebrew/current/bin:$PATH
export PATH=$HOME/Library/Android/sdk/platform-tools:$PATH

source ~/.switch_proxy

function pbc() {
  cat $1 | pbcopy
}

