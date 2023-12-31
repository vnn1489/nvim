let g:floaterm_position = 'topright'
let g:floaterm_width = 0.4
let g:floaterm_height = 0.6
let g:floaterm_title = 'TERMINAL $1/$2'
let g:floaterm_wintype = 'float'

" ????
let g:floaterm_rootmarkers = ['.pro']
if has('win32')
	let g:floaterm_shell = 'powershell -nologo'
endif

" Set color
hi Floaterm guibg=Grey15
hi FloatermBorder guifg=Orange guibg=DarkGreen
"hi FloatermNC guibg=darkred

" ????
autocmd User FloatermOpen        " triggered after opening a new/existed floater

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Hotkey to manage terminals
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Open a new terminal
nnoremap <leader>to    :FloatermNew<CR>
tnoremap <leader>to    <C-\><C-n>:FloatermNew<CR>

" Kill current terminal 
nnoremap <leader>tk :FloatermKill<CR>:FloatermPrev<CR>
tnoremap <leader>tk <C-\><C-n>:FloatermKill<CR>:FloatermPrev<CR>

" Navigation next and previous terminal 
nnoremap <leader>tn :FloatermNext<CR>
tnoremap <leader>tn <C-\><C-n>:FloatermNext<CR>
nnoremap <leader>tp :FloatermPrev<CR>
tnoremap <leader>tp <C-\><C-n>:FloatermPrev<CR>

" Toggle terminal
nnoremap <leader>tt :FloatermToggle<CR>
tnoremap <leader>tt <C-\><C-n>:FloatermToggle<CR>

" Pin & focus terminal
nnoremap <leader>tf <C-\><C-n><C-W><Left>
tnoremap <leader>tf <C-\><C-n><C-W><Left>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Hotkey to run other console apps
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Git 
nnoremap <leader>gl :FloatermNew! --position=bottomright --height=0.95 --width=0.7 --title='GitLog' git lg<CR>
