ls -al ~/

unlink ~/.bashrc
unlink ~/.zshrc
unlink ~/.tmux.conf
unlink ~/.vim
unlink ~/.vimrc
unlink ~/.gitconfig
unlink ~/.gvimrc
unlink ~/.inputrc

ln -sf ~/dotfiles/bashrc       ~/.bashrc
ln -sf ~/dotfiles/zshrc        ~/.zshrc
ln -sf ~/dotfiles/tmux.conf    ~/.tmux.conf
ln -sf ~/dotfiles/vim          ~/.vim
ln -sf ~/dotfiles/vimrc        ~/.vimrc
ln -sf ~/dotfiles/gitconfig    ~/.gitconfig
ln -sf ~/dotfiles/gvimrc       ~/.gvimrc
ln -sf ~/dotfiles/inputrc      ~/.inputrc

ls -al ~/

# sudo ln -s /usr/local/share/git-core/contrib/diff-highlight/diff-highlight /usr/local/bin

defaults write -g InitialKeyRepeat -int 12 # normal minimum is 15 (225 ms)
defaults write -g KeyRepeat -int 1 # normal minimum is 2 (30 ms)

