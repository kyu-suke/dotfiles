#!/usr/bin/env zsh

brew --version
if [ $? -ne 0 ]; then
  # install home brew
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi


# brew install
brew install git grep gnu-sed fzf nvm starship direnv
brew install --cask obsidian visual-studio-code google-chrome chatgpt-atlas thebrowsercompany-dia clipy discord iterm2

$(brew --prefix)/opt/fzf/install

# curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash > ./git-completion.bash
# echo "complete -o bashdefault -o default -o nospace -F _git g 2>/dev/null \ || complete -o default -o nospace -F _git g" >> git-completion.bash
#curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer | zsh
if command -v gvm >/dev/null 2>&1; then
  echo "gvm is already installed. Skipping installation."
else
  bash < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)
fi

# curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash


# brew cask install homebrew/cask-versions/sequel-pro-nightly

# source ./bashrc

