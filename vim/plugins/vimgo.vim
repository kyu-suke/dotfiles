let g:go_metalinter_command = ""
let g:go_metalinter_enabled = ['errcheck', 'gotype', 'gotypex', 'unused']
let g:go_metalinter_path = "--fast --vendor ./..."

let g:go_metalinter_command = "gometalinter --fast --vendor --enable=gotypex --enable=unused --enable=errcheck ./..."
let g:go_fmt_command = "goimports"


au FileType go nmap <Leader>r <Plug>(go-metalinter)
" au FileType go GoMetaLinterAutoSaveToggle

