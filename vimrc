" -------
" Common
" -------
set nocompatible
set laststatus=2
set showmode
set showcmd
set ruler
set statusline=%{expand('%:p:t')}\ %<[%{expand('%:p:h')}]%=\ %m%r%y%w[%{&fenc!=''?&fenc:&enc}][%{&ff}][%3l,%3c,%3p]
set hlsearch
set incsearch
set hidden
set whichwrap=b,s,h,l,<,>,[,]
set number
set nowrapscan
set showmatch
set nobackup
set noswapfile
set backspace=indent,eol,start
set wildmode=longest:full,list
set virtualedit+=block
set expandtab

"set cindent
set shiftwidth=2
set tabstop=2
"set smarttab

"set noautoindent
"set nosmartindent
"set nocindent


" unvisible char
set list
set listchars=tab:\|\ ,trail:.  " tab -> | , space -> .

" show □◯と
set ambiwidth=double

" -------
" Syntax
" -------
syntax enable
colorscheme nyarlatho
"colorscheme slate

set cursorline
highlight CursorLine cterm=NONE ctermfg=NONE ctermbg=NONE

" disable auto comment
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
map <C-k> <ESC>:bp<CR>
map <C-j> <ESC>:bn<CR>

" yank paste
nmap <C-p><C-p> nve"0p<ESC>

" quotes
inoremap <C-k> "
inoremap <C-l> '
inoremap <C-@> <Esc>

" save
inoremap <C-s> <Esc>:w<CR>
noremap <C-s> <Esc>:w<CR>

noremap <Leader>h ^
noremap <Leader>l $
noremap <Leader>m %
noremap <Leader>g G
noremap <Leader>p "0p
noremap <Leader>P "0P
nmap <Leader>b <ESC>:ls<CR>:buf 

nnoremap <Space>c viw:s/\%V\(_\\|-\)\(.\)/\u\2/g<CR>
nnoremap <Space>_ viw:s/\%V\([A-Z]\)/_\l\1/g<CR>
nnoremap <Space>- viw:s/\%V\([A-Z]\)/-\l\1/g<CR>
xnoremap <Space>c :s/\%V\(_\\|-\)\(.\)/\u\2/g<CR>
xnoremap <Space>_ :s/\%V\([A-Z]\)/_\l\1/g<CR>
xnoremap <Space>- :s/\%V\([A-Z]\)/-\l\1/g<CR>

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

" -------
" import
" -------
if filereadable(expand('~/.secrets/path.vim'))
  source ~/.secrets/path.vim
endif

runtime! plugins/*

"-----------
"" WELCOME
"-----------
augroup InitialMessage
	autocmd!
	autocmd VimEnter * echo "viiiiiiiii!!!!!!!!"
augroup END


highlight CursorLine NONE





" TODO
command! -nargs=* -complete=command Grr !grep -r <args>
" C-x C-f : filepath completion
" C-x C-l : line completion
" C-x C-o : omni completion
" TODO
" TODO
" TODO
" TODO
" TODO
" TODO
" TODO
" !!ls : type !!ls in insert mode, enter :.!ls in command line
" :r! ls : write result
" g;, g, : jump change position
" vimgrep
" scratch.vim

