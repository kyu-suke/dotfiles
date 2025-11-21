brew --version
if [ $? -ne 0 ]; then
  # install home brew
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi


# brew install
brew install git grep gnu-sed fzf
brew install --cask obsidian kindle visual-studio-code brave-browser google-chrome arc clipy discord orbstack cocoapods

# curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash > ./git-completion.bash
# echo "complete -o bashdefault -o default -o nospace -F _git g 2>/dev/null \ || complete -o default -o nospace -F _git g" >> git-completion.bash
zsh < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | zsh


# brew cask install homebrew/cask-versions/sequel-pro-nightly

# source ./bashrc


