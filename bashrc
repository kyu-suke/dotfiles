# .bashrc

# path setting
export GOPATH=$HOME/.go
export PATH=~/.local/bin:$GOPATH/bin:$PATH
export PATH=/usr/local/bin:$PATH
export LSCOLORS=gxfxcxdxbxegedabagacad


export JAVA_HOME=`/usr/libexec/java_home -v "1.8"`
PATH=${JAVA_HOME}/bin:${PATH}

export PATH="$HOME/.phpenv/bin:$PATH"
eval "$(phpenv init -)"

alias ls='ls -G'
alias ll='ls -l'
alias la='ls -la'
alias ei='exit'
alias v='vim'
alias gitbbk='~/shell/b_bk.sh'
alias gitbdel='~/shell/b_del.sh'

alias grep='grep --color=always --exclude-dir=fuel/app/logs'
alias gr='grep'
alias grr='grep -r'

alias gitb='git branch'
alias gitc='git checkout'
alias gits='git status'
alias gita='git add'

alias g='git'
alias elm='docker run -it --rm -v "$(pwd):/code" -w "/code" -e "HOME=/tmp" -u $UID:$GID -p 8000:8000 codesimple/elm:0.19'

# alias gitcommitlog='git for-each-ref --format=\'%\(committerdate\)%09%\(authorname\)%09%\(refname\)\' | sort -k5n -k2M -k3n -k4n | grep remotes | awk -F "\t" \'{ printf "%-32s %-27s %s\n", \$1, \$2, \$3 }\''
# commiterName authorName出すやつ ↓　
# git for-each-ref --format='%(committerdate)%09%(committername)%09%(authorname)%09%(refname)' | sort -k5n -k2M -k3n -k4n | grep remotes | awk -F "\t" '{ printf "%-32s %-27s %-27s %s\n", $1, $2, $3, $4}'

# For PHP Environment



stty -ixon -ixoff
