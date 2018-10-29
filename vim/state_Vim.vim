if g:dein#_cache_version !=# 100 || g:dein#_init_runtimepath !=# '/Users/kyusuke/.vim,/usr/local/share/vim/vimfiles,/usr/local/share/vim/vim80,/usr/local/share/vim/vimfiles/after,/Users/kyusuke/.vim/after,/Users/kyusuke/.vim/repos/github.com/Shougo/dein.vim' | throw 'Cache loading error' | endif
let [plugins, ftplugin] = dein#load_cache_raw(['/Users/kyusuke/.vimrc', '/Users/kyusuke/dotfiles/vim/dein.toml'])
if empty(plugins) | throw 'Cache loading error' | endif
let g:dein#_plugins = plugins
let g:dein#_ftplugin = ftplugin
let g:dein#_base_path = '/Users/kyusuke/.vim'
let g:dein#_runtime_path = '/Users/kyusuke/.vim/.cache/.vimrc/.dein'
let g:dein#_cache_path = '/Users/kyusuke/.vim/.cache/.vimrc'
let &runtimepath = '/Users/kyusuke/.vim,/usr/local/share/vim/vimfiles,/Users/kyusuke/.vim/repos/github.com/Shougo/vimproc.vim,/Users/kyusuke/.vim/repos/github.com/Shougo/dein.vim,/Users/kyusuke/.vim/repos/github.com/autozimu/LanguageClient-neovim,/Users/kyusuke/.vim/.cache/.vimrc/.dein,/usr/local/share/vim/vim80,/Users/kyusuke/.vim/.cache/.vimrc/.dein/after,/usr/local/share/vim/vimfiles/after,/Users/kyusuke/.vim/after'
  set background=dark
