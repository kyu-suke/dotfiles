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
let s:toml_file = fnamemodify(expand('<sfile>'), ':h').'/dein.toml'
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

"-----------
" dein
"-----------
"set rtp+=~/.vim/repos/github.com/autozimu/LanguageClient-neovim
"let g:LanguageClient_serverCommands = { 'haskell': ['hie-wrapper'] }

" ruby

"------------------------------------
" vim-rails
"------------------------------------
""{{{
"有効化
let g:rails_default_file='config/database.yml'
let g:rails_level = 4
let g:rails_mappings=1
let g:rails_modelines=0
" let g:rails_some_option = 1
" let g:rails_statusline = 1
" let g:rails_subversion=0
" let g:rails_syntax = 1
" let g:rails_url='http://localhost:3000'
" let g:rails_ctags_arguments='--languages=-javascript'
" let g:rails_ctags_arguments = ''

"function! SetUpRailsSetting()
"  nnoremap <buffer><Space>r :R<CR>
"  nnoremap <buffer><Space>a :A<CR>
"  nnoremap <buffer><Space>m :Rmodel<Space>
"  nnoremap <buffer><Space>c :Rcontroller<Space>
"  nnoremap <buffer><Space>v :Rview<Space>
"  nnoremap <buffer><Space>p :Rpreview<CR>
"endfunction

"aug MyAutoCmd
"  au User Rails call SetUpRailsSetting()
"aug END
"
"aug RailsDictSetting
"  au!
"aug END
"}}}



