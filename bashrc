# .bashrc

# export PS1="%~ $ "


export LSCOLORS=gxfxcxdxbxegedabagacad
export GOPATH=~/go/code/go-local

export LDFLAGS="-L/usr/local/opt/openssl/lib"
export CPPFLAGS="-I/usr/local/opt/openssl/include"

export PATH=~/.local/bin:$GOPATH/bin:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=$PATH:$HOME/pear/bin
export PATH=$HOME/.rbenv/shims:$PATH
export PATH=$HOME/.nodebrew/current/bin:$PATH
export PATH=/usr/local/var/nodebrew/current/bin:$PATH
export PATH="$PATH":"$HOME/.pub-cache/bin"

export PATH="$PATH:~/Garage/flutter/bin"
export PATH="$PATH:$HOME/Library/Python/3.8/bin"

export NODEBREW_ROOT=/usr/local/var/nodebrew

export EDITOR=vi

# eval "$(rbenv init -)"

#export JAVA_HOME=`/usr/libexec/java_home -v "1.8"`
#PATH=${JAVA_HOME}/bin:${PATH}

alias ls='ls -G'
alias ll='ls -l'
alias la='ls -la'
alias v='vim'

alias grep='ggrep --color=always'
alias gr='grep'
alias grr='grep -r'

alias g='git'

# source ~/dotfiles/git-completion.bash
# source <(kubectl completion bash)

stty -ixon -ixoff

# itermのタブ名
# echo -ne "\033]0;${USER}@${LANG}\007"
function tabname() {
  echo -ne "\033]0;$1\007"
}

function vgr() {
  vim $(grep -lr --color $1 $2)
}

function notaa() {
echo -e "\033[1;33m $1 \033[0m"
# echo $'\e[33m' $1 $'\e[0m'
}

if [ -e ~/.secretenvs/bashrc ]; then
  source ~/.secretenvs/bashrc
  echo "file found."
else
  echo "file NOT found."
fi

. "$HOME/.cargo/env"

PS1='[\u \W]$ '



[[ "$TERM_PROGRAM" == "kiro" ]] && . "$(kiro --locate-shell-integration-path bash)"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
