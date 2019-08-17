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
set cindent
set hlsearch
set incsearch
set hidden
set whichwrap=b,s,h,l,<,>,[,]
set number
set smarttab
set nowrapscan
set showmatch
set nobackup
set noswapfile
set backspace=indent,eol,start
set wildmode=longest:full,list
set virtualedit+=block

" grep
set grepformat=%f:%l:%m,%f:%l%m,%f\ \ %l%m,%f
set grepprg=grep\ -nh

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
map <Leader>9 <ESC>:bp<CR>
map <Leader>0 <ESC>:bn<CR>

" yank paste
nmap <C-p><C-p> nve"0p<ESC>

" quotes
inoremap <C-k> "
inoremap <C-l> '

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

if filereadable(expand('~/.secret/path.vim'))
  source ~/.secret/path.vim
endif

" -------
" Runtime
" -------
runtime! plugins/*

"-----------
"" WELCOME
"-----------
augroup InitialMessage
	autocmd!
	autocmd VimEnter * echo "viiiiiiiii!!!!!!!!"
augroup END


highlight CursorLine NONE
