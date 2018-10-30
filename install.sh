brew install python

git clone https://github.com/CHH/phpenv.git
phpenv/bin/phpenv-install.sh

curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash > ./git-completion.bash
echo "complete -o bashdefault -o default -o nospace -F _git g 2>/dev/null \ || complete -o default -o nospace -F _git g" >> git-completion.bash

pip3 install icdiff
pip3 install diff-highlight

