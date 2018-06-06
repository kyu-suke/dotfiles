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
if dein#load_state('~/.vim')
  call dein#begin('~/.vim')

  " Let dein manage dein
  " Required:
  call dein#add('~/.vim/repos/github.com/Shougo/dein.vim')

  " You can specify revision/branch/tag.
  " call dein#add('Shougo/deol.nvim', { 'rev': 'a1b5108fd' })

  call dein#add('~/.vim/repos/dein/github.com/Shougo/dein.vim/')

  call dein#add('junegunn/vim-easy-align')
  call dein#add('scrooloose/nerdtree')
  call dein#add('Townk/vim-autoclose')
  call dein#add('terryma/vim-expand-region')
  call dein#add('Lokaltog/vim-easymotion')

  call dein#add('mattn/emmet-vim')
  call dein#add('fatih/vim-go')

  call dein#add('Lokaltog/vim-powerline')

  " color
  call dein#add('cocopon/iceberg.vim')

  " haskell
  call dein#add('neovimhaskell/haskell-vim')

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

"-----------
" dein
"-----------
