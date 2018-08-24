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
set expandtab
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

" -------
" Runtime
" -------
runtime! plugin.vim

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
" baffer next
map <F9> <ESC>:bn<CR>
map <Leader>0 <ESC>:bn<CR>
" 次の検索箇所にyank内容貼付
nmap <C-o><C-p> nve"0p<ESC>

inoremap <C-s> <Esc>:w<CR>
noremap <C-s> <Esc>:w<CR>

noremap <Leader>h ^
noremap <Leader>l $
noremap <Leader>m %
noremap <Leader>g G
noremap <Leader>p "0p
noremap <Leader>P "0P
nmap <Leader>b <ESC>:ls<CR>:buf 

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


""""""""""""""""""""""""""""
""" タブ関連
"" Anywhere SID.
"function! s:SID_PREFIX()
"	return matchstr(expand('<sfile>'), '<SNR>\d\+_\zeSID_PREFIX$')
"endfunction
"
"" Set tabline.
"function! s:my_tabline()  "{{{
"	let s = ''
"	for i in range(1, tabpagenr('$'))
"		let bufnrs = tabpagebuflist(i)
"		let bufnr = bufnrs[tabpagewinnr(i) - 1]  " first window, first appears
"		let no = i  " display 0-origin tabpagenr.
"		let mod = getbufvar(bufnr, '&modified') ? '!' : ' '
"		let title = fnamemodify(bufname(bufnr), ':t')
"		let title = '[' . title . ']'
"		let s .= '%'.i.'T'
"		let s .= '%#' . (i == tabpagenr() ? 'TabLineSel' : 'TabLine') . '#'
"		let s .= no . ':' . title
"		let s .= mod
"		let s .= '%#TabLineFill# '
"	endfor
"	let s .= '%#TabLineFill#%T%=%#TabLine#'
"	return s
"endfunction "}}}
"let &tabline = '%!'. s:SID_PREFIX() . 'my_tabline()'
"set showtabline=2 " 常にタブラインを表示
"
"" The prefix key.
"nnoremap    [Tag]   <Nop>
"nmap    t [Tag]
"" Tab jump
"for n in range(1, 9)
"	execute 'nnoremap <silent> [Tag]'.n  ':<C-u>tabnext'.n.'<CR>'
"endfor
"" t1 で1番左のタブ、t2 で1番左から2番目のタブにジャンプ
"
"map <silent> [Tag]c :tablast <bar> tabnew<CR>
"" tc 新しいタブを一番右に作る
"map <silent> [Tag]x :tabclose<CR>
"" tx タブを閉じる
"map <silent> <C-n> :tabnext<CR>
"" tn 次のタブ
"map <silent> <C-p> :tabprevious<CR>
"" tp 前のタブ
""""""""""""""""""""""""""""

"-----------
"" WELCOME
"-----------
augroup InitialMessage
	autocmd!
	autocmd VimEnter * echo "viiiiiiiii!!!!!!!!"
augroup END

