" runtime したらファイル分割できるらしいそのうち

"--------------------
"" 基本的な設定
"--------------------
"vi互換をオフする
set nocompatible

""新しい行のインデントを現在行と同じにする
"set autoindent
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
"set showmatch
let loaded_matchparen = 1 "括弧対応させない

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

" コマンドモードの補完
"set wildmenu
" コマンドモードでの補完設定
set wildmode=longest:full,list

"" カーソル行をハイライト重い
"set cursorline

" 矩形選択で自由に移動する
set virtualedit+=block

" syntax
colorscheme nyarlatho
syntax enable

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
" バッファ一覧
"nmap <C-l><C-l> <ESC>:ls<CR>
nmap <C-l><C-l> <ESC>:ls<CR>:buf 
" print_r()
nmap <C-p><C-r> aprint_r();<ESC>
imap <C-p><C-r> print_r();<ESC>
" 次の検索箇所にyank内容貼付
nmap <C-o><C-p> nve"0p<ESC>

" 挿入モードでのカーソル移動
"inoremap <C-j> <Down>
"inoremap <C-k> <Up>
"inoremap <C-h> <Left>
"inoremap <C-l> <Right>

" ESC代わり
inoremap <C-o> <Esc>
noremap <C-o> <Esc>

" 保存
inoremap <C-s> <Esc>:w<CR>
noremap <C-s> <Esc>:w<CR>

" :sh
nmap <C-q><C-q> <ESC>:sh<CR>

" Lender
let mapleader = "\<Space>"
noremap <Leader>h ^
noremap <Leader>l $
noremap <Leader>m %
noremap <Leader>g G
noremap <Leader>a :set relativenumber!<CR>



"-----------
"" タグ設定
"-----------
"ctag設定
"set tags=~/hoge/tags
" 拡張子で読み込みタグ変更
au BufNewFile,BufRead *.php set tags+=$HOME/php.tags
au BufNewFile,BufRead *.js set tags+=$HOME/js.tags



"-----------
"" PATH
"-----------
let $M='./fuel/app/classes/model'
let $V='./fuel/app/views'
let $C='./fuel/app/classes/controller'
let $J='./public/assets/js'



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
if &compatible
  set nocompatible
endif
"set runtimepath+=~/.vim/repos/dein/github.com/Shougo/dein.vim/
set runtimepath+=~/.vim/repos/github.com/Shougo/dein.vim/

if dein#load_state('~/.vim/repos/dein/')
  call dein#begin('~/.vim/repos/dein/')

  call dein#add('~/.vim/repos/dein/github.com/Shougo/dein.vim/')

  call dein#add('Shougo/neocomplete.vim')
  call dein#add('junegunn/vim-easy-align')
  call dein#add('scrooloose/nerdtree')
  call dein#add('Shougo/neosnippet')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('Townk/vim-autoclose')
  call dein#add('terryma/vim-expand-region')
  call dein#add('Lokaltog/vim-easymotion')

  call dein#add('mattn/emmet-vim')
  call dein#add('fatih/vim-go')

  call dein#end()

  if dein#check_install()
    call dein#install()
  endif

  call dein#save_state()
endif

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

"""
" NeoComplete
"""
" Note: This option must be set in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
			\ 'default' : '',
			\ 'vimshell' : $HOME.'/.vimshell_hist',
			\ 'scheme' : $HOME.'/.gosh_completions'
			\ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
	let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
	return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
	" For no inserting <CR> key.
	"return pumvisible() ? "\<C-y>" : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? "\<C-y>" : "\<Space>"

" AutoComplPop like behavior.
"let g:neocomplete#enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplete#enable_auto_select = 1
"let g:neocomplete#disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
	let g:neocomplete#sources#omni#input_patterns = {}
endif
"let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
"let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
"let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'
"""
" / NeoComplete
"""

"""
" NeoSnippet
"""
" Plugin key-mappings.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-k> <Plug>(neosnippet_expand_or_jump)
smap <C-k> <Plug>(neosnippet_expand_or_jump)
xmap <C-k> <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-k> <Plug>(neosnippet_expand_or_jump)

"imap <expr><TAB>
" \ pumvisible() ? "\<C-n>" :
" \ neosnippet#expandable_or_jumpable() ?
" \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
			\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
if has('conceal')
	set conceallevel=2 concealcursor=niv
endif
"""
" / NeoSnippet
"""

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

