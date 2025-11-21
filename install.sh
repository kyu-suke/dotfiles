#!/usr/bin/env zsh

brew --version
if [ $? -ne 0 ]; then
  # install home brew
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi


# brew install
brew install git grep gnu-sed fzf starship direnv mise
brew install --cask obsidian visual-studio-code google-chrome chatgpt-atlas thebrowsercompany-dia clipy discord iterm2

if ! command -v fzf >/dev/null 2>&1; then
  $(brew --prefix)/opt/fzf/install
fi


# curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash > ./git-completion.bash
# echo "complete -o bashdefault -o default -o nospace -F _git g 2>/dev/null \ || complete -o default -o nospace -F _git g" >> git-completion.bash

# brew cask install homebrew/cask-versions/sequel-pro-nightly

