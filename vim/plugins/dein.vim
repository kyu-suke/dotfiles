"-----------
"" dein
" $ curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
" $ sh ./installer.sh .vim
" $ mkdir .vim/dein
"-----------

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.vim/repos/github.com/Shougo/dein.vim

" Required:
" let s:toml_file = fnamemodify(expand('<sfile>'), ':h').'/dein.toml'
let s:toml_file = fnamemodify(expand('<sfile>'), ':h').'/../dein.toml'
if dein#load_state('~/.vim')
  call dein#begin('~/.vim')

  call dein#load_toml(s:toml_file)

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

if has('vim_starting') && dein#check_install()
  call dein#install()
endif


