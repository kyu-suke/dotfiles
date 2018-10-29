set showtabline=1
set transparency=10
set imdisable
set guioptions-=T
set antialias
set tabstop=8
set number
set nobackup
set visualbell t_vb=
set nowrapscan
set columns=150
set lines=48

"----------
" カラースキーム
"----------
syntax on
colorscheme nyarlatho

nmap <C-x><C-x> :so ~/.gvimrc<CR>

augroup BgHighlight
    autocmd!
    autocmd WinEnter * set number
    autocmd WinLeave * set nonumber
augroup END

let s:save_cpo = &cpo
set cpo&vim

let s:V = vital#of("nyaaancat")
let s:Reunions = s:V.import("Reunions")
let s:Buffer = s:V.import("Coaster.Buffer")

function! Comvo(...)
	let opencmd = get(a:, 1, "new")
	let buffer = s:Buffer.open(opencmd)
	call buffer.set_option("number", 0)
	call buffer.set_option("list", 0)
	call buffer.set_option("foldenable", 0)
	call buffer.set_option("buftype", "nofile")
	call buffer.set_option("swapfile", 0)
	"call buffer.set_option("resize", 10)
	call buffer.setline(1, s:num_list[0])
	call s:highlight()

	let task = {
\		"buffer" : buffer,
\		"counter" : 0,
\		"sec_counter" : 0
\	}
	function! task.apply(...)
		if !self.buffer.is_opened_in_current_tabpage()
			return
		endif

		let self.counter += 1
		if self.counter % 10 == 0
			let self.sec_counter += 1
		endif

		let s:i = 0
		let s:str = []
		while s:i < 10
			"let s:str = s:num_list[self.counter % len(s:num_list)]
			let s:hoge = s:num_list[self.counter % len(s:num_list)][eval(i)]
			call add(s:str, s:hoge)
			"let s:str[i] = s:num_list[self.sec_couter % len(s:num_list)][i] . s:num_list[self.counter % len(s:num_list)][i]
			let s:i += 1
		endwhile

		call self.buffer.setline(1, s:num_list[self.counter % len(s:num_list)])
	endfunction
	call s:Reunions.timer(task, 0)
endfunction

augroup nyaaancat-autocmd
	autocmd!
	"autocmd CursorHold,CursorHoldI * call s:Reunions.update_in_cursorhold(1)
	autocmd CursorMovedI * call s:Reunions.update_in_cursorhold(1)
augroup END

function! s:highlight()
	syntax clear
	syntax match kysuke_comvo_char1 /@/ containedin=kysuke_comvo
	highlight kysuke_comvo_char1 guifg='#fecc97'
	highlight kysuke_comvo_char1 guibg='#fecc97'
	syntax match kysuke_comvo_char2 / / containedin=kysuke_comvo
	highlight kysuke_comvo_char2 guifg='#ff99ff'
	highlight kysuke_comvo_char2 guibg='#ff99ff'
endfunction


