"-----------
"" dein
" $ curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
" $ sh ./installer.sh .vim
" $ mkdir .vim/dein
"-----------



" Ward off unexpected things that your distro might have made, as
" well as sanely reset options when re-sourcing .vimrc
set nocompatible

" Set Dein base path (required)
let s:dein_base = '~/.cache/dein'

" Set Dein source path (required)
let s:dein_src = '~/.cache/dein/repos/github.com/Shougo/dein.vim'

" Set Dein runtime path (required)
execute 'set runtimepath+=' . s:dein_src

" Call Dein initialization (required)
call dein#begin(s:dein_base)

call dein#add(s:dein_src)

" Your plugins go here:
"call dein#add('Shougo/neosnippet.vim')
"call dein#add('Shougo/neosnippet-snippets')

" Finish Dein initialization (required)
call dein#end()

" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
if has('filetype')
  filetype indent plugin on
endif

" Enable syntax highlighting
if has('syntax')
  syntax on
endif

" Uncomment if you want to install not-installed plugins on startup.
"if dein#check_install()
" call dein#install()
"endif


"  "dein Scripts-----------------------------
if "d &compatible
   "dset nocompatible               " Be iMproved
en "ddif

"  "dRequired:
se "dt runtimepath+=~/.vim/repos/github.com/Shougo/dein.vim

"  "dRequired:
"  "dlet s:toml_file = fnamemodify(expand('<sfile>'), ':h').'/dein.toml'
le "dt s:toml_file = fnamemodify(expand('<sfile>'), ':h').'/../dein.toml'
if "d dein#load_state('~/.vim')
   "dcall dein#begin('~/.vim')

   "dcall dein#load_toml(s:toml_file)

   "d" Required:
   "dcall dein#end()
   "dcall dein#save_state()
en "ddif

"  "dRequired:
fi "dletype plugin indent on
sy "dntax enable

if "d has('vim_starting') && dein#check_install()
   "dcall dein#install()
en "ddif
