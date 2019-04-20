ls -al ~/

mkdir -p ~/.config/nvim/

unlink ~/.bash_profile
unlink ~/.bashrc
unlink ~/.tmux.conf
unlink ~/.vim
unlink ~/.vimrc
unlink ~/.gitconfig
unlink ~/.gvimrc
unlink ~/.ideavimrc
unlink ~/.inputrc
unlink ~/.config/nvim/init.vim


ln -sf ~/dotfiles/bash_profile ~/.bash_profile
ln -sf ~/dotfiles/bashrc       ~/.bashrc
ln -sf ~/dotfiles/tmux.conf    ~/.tmux.conf
ln -sf ~/dotfiles/vim          ~/.vim
ln -sf ~/dotfiles/vimrc        ~/.vimrc
ln -sf ~/dotfiles/vimrc        ~/.config/nvim/init.vim
ln -sf ~/dotfiles/gitconfig    ~/.gitconfig
ln -sf ~/dotfiles/gvimrc       ~/.gvimrc
ln -sf ~/dotfiles/ideavimrc    ~/.ideavimrc
ln -sf ~/dotfiles/inputrc      ~/.inputrc

ls -al ~/

defaults write -g InitialKeyRepeat -int 12 # normal minimum is 15 (225 ms)
defaults write -g KeyRepeat -int 1 # normal minimum is 2 (30 ms)

