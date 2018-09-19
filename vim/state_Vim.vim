if g:dein#_cache_version !=# 100 || g:dein#_init_runtimepath !=# '/Users/b06453/.vim,/Applications/MacVim.app/Contents/Resources/vim/vimfiles,/Applications/MacVim.app/Contents/Resources/vim/runtime,/Applications/MacVim.app/Contents/Resources/vim/vimfiles/after,/Users/b06453/.vim/after,/Applications/MacVim.app/Contents/Resources/vim/plugins/autofmt,/Applications/MacVim.app/Contents/Resources/vim/plugins/golang,/Applications/MacVim.app/Contents/Resources/vim/plugins/kaoriya,/Applications/MacVim.app/Contents/Resources/vim/plugins/vimdoc-ja,/Users/b06453/.vim/repos/github.com/Shougo/dein.vim' | throw 'Cache loading error' | endif
let [plugins, ftplugin] = dein#load_cache_raw(['/Users/b06453/.vimrc', '/Users/b06453/dotfiles/vim/dein.toml'])
if empty(plugins) | throw 'Cache loading error' | endif
let g:dein#_plugins = plugins
let g:dein#_ftplugin = ftplugin
let g:dein#_base_path = '/Users/b06453/.vim'
let g:dein#_runtime_path = '/Users/b06453/.vim/.cache/.vimrc/.dein'
let g:dein#_cache_path = '/Users/b06453/.vim/.cache/.vimrc'
let &runtimepath = '/Users/b06453/.vim,/Applications/MacVim.app/Contents/Resources/vim/vimfiles,/Users/b06453/.vim/repos/github.com/Shougo/vimproc.vim,/Users/b06453/.vim/repos/github.com/Shougo/dein.vim,/Users/b06453/.vim/repos/github.com/autozimu/LanguageClient-neovim,/Users/b06453/.vim/.cache/.vimrc/.dein,/Applications/MacVim.app/Contents/Resources/vim/runtime,/Users/b06453/.vim/.cache/.vimrc/.dein/after,/Applications/MacVim.app/Contents/Resources/vim/vimfiles/after,/Users/b06453/.vim/after,/Applications/MacVim.app/Contents/Resources/vim/plugins/autofmt,/Applications/MacVim.app/Contents/Resources/vim/plugins/golang,/Applications/MacVim.app/Contents/Resources/vim/plugins/kaoriya,/Applications/MacVim.app/Contents/Resources/vim/plugins/vimdoc-ja'
filetype off
  set background=dark
