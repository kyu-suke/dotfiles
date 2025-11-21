# .zshrc

# export PS1="%~ $ "

bindkey -e

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

export PATH="$PATH":"/opt/homebrew/Cellar/redis@6.2/6.2.17/bin/"

export PATH="$PATH:$HOME/Library/Python/3.8/bin"

export PATH="$PATH:$HOME/Garage/flutter/bin"

# export NODEBREW_ROOT=/usr/local/var/nodebrew
export NODEBREW_ROOT=$HOME/.nodebrew

export EDITOR=vi

eval "$(/opt/homebrew/bin/brew shellenv)"


eval "$(starship init zsh)"


export PATH=/opt/homebrew/bin:$PATH
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"
# eval "$(rbenv init - zsh)"

export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"

export PATH=$PATH:$HOME/Library/Android/sdk/platform-tools


#export DEVAPPSERVER_ROOT=/usr/local/bin/python2
#export CLOUDSDK_DEVAPPSERVER_PYTHON=/usr/local/bin/python2
#export CLOUDSDK_PYTHON=~/pyvenv/bin/python
#export CLOUDSDK_PYTHON=$(which python)
#export PYTHONPATH=$HOME:$HOME/pyvenv/lib:$PYTHONPATH
#export PYTHONPATH=$HOME/google-cloud-sdk/platform/google_appengine:$PYTHONPATH


export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

eval "$(direnv hook zsh)"

#export JAVA_HOME=`/usr/libexec/java_home -v "1.8"`
#PATH=${JAVA_HOME}/bin:${PATH}
export JAVA_HOME="$(/usr/libexec/java_home -v17)"
export PATH="$JAVA_HOME/bin:$PATH"


export HISTSIZE=100000

alias ls='ls -G'
alias ll='ls -l'
alias la='ls -la'
alias v='vim'

alias grep='ggrep --color=always'
alias gr='grep'
alias grr='grep -r'

alias sed='gsed'

alias g='git'

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
}

# PS1='[\u \W]$ '
# PROMPT="%n$:%c "

autoload -Uz edit-command-line
zle -N edit-command-line
bindkey '^x^e' edit-command-line

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
if command -v fzf >/dev/null 2>&1; then
  bindkey '^R' fzf-history-widget
fi



[[ -s "$HOME/.gvm/scripts/gvm" ]] && source "$HOME/.gvm/scripts/gvm"


# The next line updates PATH for the Google Cloud SDK.
if [ -f "$HOME/google-cloud-sdk/path.zsh.inc" ]; then . "$HOME/google-cloud-sdk/path.zsh.inc"; fi

# The next line enables shell command completion for gcloud.
if [ -f "$HOME/google-cloud-sdk/completion.zsh.inc" ]; then . "$HOME/google-cloud-sdk/completion.zsh.inc"; fi

[[ "$TERM_PROGRAM" == "kiro" ]] && . "$(kiro --locate-shell-integration-path zsh)"

[[ -s "/Users/usk/.gvm/scripts/gvm" ]] && source "/Users/usk/.gvm/scripts/gvm"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
