" -------
" Common
" -------
set nocompatible
set laststatus=2
set showmode
set showcmd
set ruler
set statusline=%{expand('%:p:t')}\ %<[%{expand('%:p:h')}]%=\ %m%r%y%w[%{&fenc!=''?&fenc:&enc}][%{&ff}][%3l,%3c,%3p]
set tabstop=4
set shiftwidth=4
"set expandtab
set cindent
set hlsearch
set incsearch
set hidden
set whichwrap=b,s,h,l,<,>,[,]
set number
set smarttab


"検索をファイルの先頭へループしない
set nowrapscan

set showmatch

set nobackup
" set backupdir=$HOME/vimbackup

set noswapfile
" set directory=$HOME/vimbackup

" Back Space
set backspace=indent,eol,start

" grep検索を設定する todo
set grepformat=%f:%l:%m,%f:%l%m,%f\ \ %l%m,%f
set grepprg=grep\ -nh

" 不可視文字の表示
set list  " 不可視文字を表示する
set listchars=tab:\|\ ,trail:.  " タブを | 半スペを . で表示する

" □◯とかをきれいに表示
set ambiwidth=double

" コマンドモードでの補完設定
set wildmode=longest:full,list

" 矩形選択で自由に移動する
set virtualedit+=block


"
" let
"
let g:go_fmt_command = "goimports"
set autowrite

" let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#buffer_nr_show=1


set rtp+=~/.vim/repos/github.com/autozimu/LanguageClient-neovim
let g:LanguageClient_autoStart = 1
let g:LanguageClient_serverCommands = { 'haskell': ['hie-wrapper'] }
" let g:LanguageClient_settingsPath = path/to/.vim/settings.json

nnoremap <F5> :call LanguageClient_contextMenu()<CR>
map <Leader>lk :call LanguageClient#textDocument_hover()<CR>
map <Leader>lg :call LanguageClient#textDocument_definition()<CR>
map <Leader>lr :call LanguageClient#textDocument_rename()<CR>
map <Leader>lf :call LanguageClient#textDocument_formatting()<CR>
map <Leader>lb :call LanguageClient#textDocument_references()<CR>
map <Leader>la :call LanguageClient#textDocument_codeAction()<CR>
map <Leader>ls :call LanguageClient#textDocument_documentSymbol()<CR>

hi link ALEError Error
hi Warning term=underline cterm=underline ctermfg=Yellow gui=undercurl guisp=Gold
hi link ALEWarning Warning
hi link ALEInfo SpellCap

let g:LanguageClient_rootMarkers = ['*.cabal', 'stack.yaml']



" -------
" Syntax
" -------
syntax enable
" colorscheme nyarlatho
" colorscheme iceberg
colorscheme slate
set nocursorline
hi clear CursorLine

" 自動コメント無効
augroup auto_comment_off
	autocmd!
	autocmd BufEnter * setlocal formatoptions-=r
	autocmd BufEnter * setlocal formatoptions-=o
augroup END



"-----------
"" KeyMap
"-----------
" Leader
let mapleader = "\<Space>"

" 検索結果のハイライト解除
nnoremap <Leader>1 :noh<CR>

" 矩形でスペース削除
vnoremap SS :s/\%V \%V//g<CR>

" baffer pre
map <F7> <ESC>:bp<CR>
map <Leader>9 <ESC>:bp<CR>
map <F7> <ESC>:bp<CR>
" baffer next
map <F9> <ESC>:bn<CR>
map <Leader>0 <ESC>:bn<CR>
map <F9> <ESC>:bn<CR>
" 次の検索箇所にyank内容貼付
nmap <C-o><C-p> nve"0p<ESC>

" ESC代わり
" inoremap <C-q> <Esc>

" quotes
" inoremap <C-k> "
" inoremap <C-l> '

" 保存 Esc

inoremap <C-s> <Esc>:w<CR>
noremap <C-s> <Esc>:w<CR>

noremap <Leader>h ^
noremap <Leader>l $
noremap <Leader>m %
noremap <Leader>g G
noremap <Leader>p "0p
noremap <Leader>P "0P
nmap <Leader>b <ESC>:ls<CR>:buf 
nmap <C-p> <ESC>:bp<CR>
nmap <C-n> <ESC>:bn<CR>

" EasyAlign
vmap <Enter> <Plug>(EasyAlign)

" NERDTree
nmap <F3> :NERDTreeToggle<CR>

" vim-expand-region
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

"-----------
"" ctags
"-----------
" XXX
"set tags=~/hoge/tags
" 拡張子で読み込みタグ変更
au BufNewFile,BufRead *.php set tags+=$HOME/_php.tags
au BufNewFile,BufRead *.js set tags+=$HOME/_js.tags

"-----------
" Command
"-----------
" -nargs=0 引数を取らない (デフォルト)
" -nargs=1 1個の引数が必要 
" -nargs=* いくつでも引数を取れる 空白で区切られる
" -nargs=? 0 もしくは 1 個の引数が取れる
" -nargs=+ 引数が必ず必è
"-----------
command! -nargs=1 -complete=command Enc e ++enc=<args>

"-----------
"" Dictiona
"-----------
autocmd FileType php,ctp :set dictionary=~/.vim/dict/php.dict
autocmd FileType js,vue :set filetype=javascript

autocmd BufEnter *.rb,*.erb,*.slim,*.rake,*.coffee :set expandtab
autocmd BufEnter *.rb,*.erb,*.slim,*.rake,*.coffee :set shiftwidth=2

autocmd BufEnter *.js,*.vue,*.html :set shiftwidth=2
autocmd BufEnter *.js,*.vue,*.html :set expandtab


if has("autocmd")
  "ファイルタイプの検索を有効にする
  filetype plugin on
  "ファイルタイプに合わせたインデントを利用
  filetype indent on
  "sw=softtabstop, sts=shiftwidth, ts=tabstop, et=expandtabの略
  autocmd FileType c           setlocal sw=4 sts=4 ts=4 et
  autocmd FileType html        setlocal sw=4 sts=4 ts=4 et
  autocmd FileType ruby        setlocal sw=2 sts=2 ts=2 et
  autocmd FileType js          setlocal sw=4 sts=4 ts=4 et
  autocmd FileType zsh         setlocal sw=4 sts=4 ts=4 et
  autocmd FileType python      setlocal sw=4 sts=4 ts=4 et
  autocmd FileType scala       setlocal sw=4 sts=4 ts=4 et
  autocmd FileType json        setlocal sw=4 sts=4 ts=4 et
  autocmd FileType html        setlocal sw=4 sts=4 ts=4 et
  autocmd FileType css         setlocal sw=4 sts=4 ts=4 et
  autocmd FileType scss        setlocal sw=4 sts=4 ts=4 et
  autocmd FileType sass        setlocal sw=4 sts=4 ts=4 et
  autocmd FileType javascript  setlocal sw=4 sts=4 ts=4 et
endif


"augroup ProjectSetup
"au BufRead,BufEnter /path/to/project1/* set et sts=2 cindent cinoptions=...
"au BufRead,BufEnter /path/to/project2/* set noet sts=4 cindent cinoptions=...
"augroup END
"
"
"au BufRead,BufEnter /path/to/project1/*.{c,h} set noet sts=0 cindent cinoptions=...
"au BufRead,BufEnter /path/to/project1/*.py set et sts=4

"-----------
"" WELCOME
"-----------
augroup InitialMessage
	autocmd!
	autocmd VimEnter * echo "viiiiiiiii!!!!!!!!"
augroup END

set nocursorline

" -------
" Runtime
" -------
runtime! plugin.vim
" runtime! ale.vim
runtime! vimgo.vim

runtime! codef/*
