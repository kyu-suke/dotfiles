" encoding
" script encoding

set laststatus=2
set showmode
set showcmd
set ruler

set statusline=%{expand('%:p:t')}\ %<[%{expand('%:p:h')}]%=\ %m%r%y%w[%{&fenc!=''?&fenc:&enc}][%{&ff}][%3l,%3c,%3p]

set tabstop=4
set shiftwidth=4

" set curorline時の行番号の色
"CursorLineNr ctermbg=4 ctermfg=0

" 全角力
"nnoremap <silent> い i
"nnoremap <silent> あ a
"nnoremap <silent> お o
"nnoremap <silent> っｄ dd
"nnoremap <silent> う u
"nnoremap <silent> ：ｗｑ :wq

" runtime したらファイル分割できるらしいそのうち

"--------------------
"" 基本的な設定
"--------------------
"vi互換をオフする
set nocompatible

""新しい行のインデントを現在行と同じにする
set cindent

"検索ハイライト
set hlsearch

"バックアップファイルのディレクトリを指定する でも作成しない
" set backupdir=$HOME/vimbackup
set nobackup

"スワップファイル用のディレクトリを指定する でも作成しない
" set directory=$HOME/vimbackup
set noswapfile

" BSが効かないので
set backspace=indent,eol,start

"左右のカーソル移動で行間移動可能にする。
set whichwrap=b,s,h,l,<,>,[,]

"タブの代わりに空白文字を指定する
"set expandtab

""変更中のファイルでも、保存しないで他のファイルを表示する
set hidden

"インクリメンタルサーチを行う
set incsearch

""行番号を表示する
set number

"閉括弧が入力された時、対応する括弧を強調する
set showmatch
"let loaded_matchparen = 1 "括弧対応させない

""新しい行を作った時のインデント
set smarttab

" grep検索を設定する
set grepformat=%f:%l:%m,%f:%l%m,%f\ \ %l%m,%f
set grepprg=grep\ -nh

" 不可視文字の表示
set list  " 不可視文字を表示する
set listchars=tab:\|\ ,trail:.  " タブを | 半スペを . で表示する

"検索をファイルの先頭へループしない
set nowrapscan

" □◯とかをきれいに表示
set ambiwidth=double

" コマンドモードでの補完設定
set wildmode=longest:full,list

" 矩形選択で自由に移動する
set virtualedit+=block

" syntax

" 行番号に色をつけたいけどカーソルラインはいらない
syntax enable
colorscheme nyarlatho

set cursorline
hi clear CursorLine

" 自動コメント無効
augroup auto_comment_off
	autocmd!
	autocmd BufEnter * setlocal formatoptions-=r
	autocmd BufEnter * setlocal formatoptions-=o
augroup END



"-----------
"" きまっぷ
"-----------
" 検索結果のハイライト解除
nnoremap <ESC>1 :noh<CR>

" 矩形でスペース削除
vnoremap SS :s/\%V \%V//g<CR>

" F7で前のバッファ
map <F7> <ESC>:bp<CR>
" F9で次のバッファ
map <F9> <ESC>:bn<CR>
" F8でバッファ確認
map <F8> <ESC>:ls<CR>
" 空改行
nmap <C-l><C-o> o<ESC>
" 次の検索箇所にyank内容貼付
nmap <C-o><C-p> nve"0p<ESC>

" ESC代わり
inoremap <C-q> <Esc>

" 保存 Esc
inoremap <C-s> <Esc>:w<CR>
noremap <C-s> <Esc>:w<CR>

" Leader
let mapleader = "\<Space>"
noremap <Leader>h ^
noremap <Leader>l $
noremap <Leader>m %
noremap <Leader>g G
noremap <Leader>p "0p
noremap <Leader>P "0P
" noremap <Leader>a :set relativenumber!<CR>

" バッファ一覧
nmap <Leader>b <ESC>:ls<CR>:buf 

"-----------
"" タグ設定
"-----------
"ctag設定 XXX
"set tags=~/hoge/tags
" 拡張子で読み込みタグ変更
au BufNewFile,BufRead *.php set tags+=$HOME/_php.tags
au BufNewFile,BufRead *.js set tags+=$HOME/_js.tags

"-----------
" コマンド
" -nargs=0    引数を取らない (デフォルト)
" -nargs=1    1個の引数が必要 
" -nargs=*    いくつでも引数を取れる 空白で区切られる
" -nargs=?    0 もしくは 1 個の引数が取れる
" -nargs=+    引数が必ず必è
"-----------
command! -nargs=1 -complete=command Enc e ++enc=<args>

"-----------
"" その他
"-----------
" 辞書
autocmd FileType php,ctp :set dictionary=~/.vim/dict/php.dict
autocmd FileType js,vue :set filetype=javascript

" 補完リストの設定
"highlight Pmenu ctermbg=4
"highlight PmenuSel ctermbg=1
"highlight PMenuSbar ctermbg=4

" :makeで構文チェック XXX



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

" EasyAlign
vmap <Enter> <Plug>(EasyAlign)

" NERDTree
nmap <F3> :NERDTreeToggle<CR>

" vim-expand-region
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)


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

