brew install python
brew install rbenv
brew install grep

git clone https://github.com/CHH/phpenv.git
phpenv/bin/phpenv-install.sh

curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash > ./git-completion.bash
echo "complete -o bashdefault -o default -o nospace -F _git g 2>/dev/null \ || complete -o default -o nospace -F _git g" >> git-completion.bash

pip3 install icdiff
pip3 install diff-highlight


# brew cask install homebrew/cask-versions/sequel-pro-nightly

source ./bashrc
curl -fsSL https://github.com/rbenv/rbenv-installer/raw/master/bin/rbenv-doctor | bash
brew upgrade rbenv ruby-build


