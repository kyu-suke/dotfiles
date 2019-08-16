# .bashrc

export GOPATH=$HOME/.go
export PATH=~/.local/bin:$GOPATH/bin:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=$PATH:$HOME/pear/bin
export PATH="$HOME/.rbenv/shims:$PATH"
eval "$(rbenv init -)"

export LSCOLORS=gxfxcxdxbxegedabagacad
export GOPATH=~/go/code/go-local

export LDFLAGS="-L/usr/local/opt/openssl/lib"
export CPPFLAGS="-I/usr/local/opt/openssl/include"

export PATH=/usr/local/var/nodebrew/current/bin:$PATH
export NODEBREW_ROOT=/usr/local/var/nodebrew

export EDITOR=vi

export JAVA_HOME=`/usr/libexec/java_home -v "1.8"`
PATH=${JAVA_HOME}/bin:${PATH}

alias ls='ls -G'
alias ll='ls -l'
alias la='ls -la'
alias v='vim'

alias grep='ggrep --color=always'
alias gr='grep'
alias grr='grep -r'

alias g='git'

source ~/dotfiles/git-completion.bash
source <(kubectl completion bash)

stty -ixon -ixoff

# itermのタブ名
# echo -ne "\033]0;${USER}@${LANG}\007"
function tabname() {
  echo -ne "\033]0;$1\007"
}

function vgr() {
  vim $(grep -lr --color $1 $2)
}

if [ -e ~/.secrets/bashrc ]; then
  source ~/.secrets/bashrc
  echo "file found."
else
  echo "file NOT found."
fi
