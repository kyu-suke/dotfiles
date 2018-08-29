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

  "call dein#add('~/.vim/repos/dein/github.com/Shougo/dein.vim/')

  " nanika
  call dein#add('terryma/vim-expand-region')
  call dein#add('Lokaltog/vim-easymotion')

  " aligner
  call dein#add('junegunn/vim-easy-align')

  " input util
  call dein#add('Townk/vim-autoclose')

  " selector
  call dein#add('ctrlpvim/ctrlp.vim') " using
  call dein#add('scrooloose/nerdtree')

  " color
  call dein#add('cocopon/iceberg.vim')
  call dein#add('kudabux/vim-srcery-drk')
  call dein#add('gkjgh/cobalt')
  call dein#add('vim-scripts/Risto-Color-Scheme')

  " ui util
  call dein#add('vim-airline/vim-airline') " using

  " haskell
  "call dein#add('neovimhaskell/haskell-vim')
  "call dein#add('enomsg/vim-haskellConcealPlus')
  "call dein#add('eagletmt/ghcmod-vim')
  "call dein#add('eagletmt/neco-ghc')
  "call dein#add('mpickering/hlint-refactor-vim')

  " golang
  call dein#add('fatih/vim-go')

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

"-----------
" dein
"-----------