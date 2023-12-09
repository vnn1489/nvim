let g:floaterm_position = 'topright'
let g:floaterm_width = 0.6
let g:floaterm_height = 0.8
let g:floaterm_title = 'Terminal $1/$2'
let g:floaterm_wintype = 'float'
let g:floaterm_rootmarkers = ['.pro']
if has('win32')
	let g:floaterm_shell = 'powershell -nologo'
endif

" Set color
hi Floaterm guibg=Grey15
hi FloatermBorder guifg=Orange guibg=DarkGreen
"hi FloatermNC guibg=darkred

autocmd User FloatermOpen        " triggered after opening a new/existed floater

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" => Hotkey to manage terminals
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Open a new terminal 
nnoremap <F9> 		:FloatermNew<CR>	" OPTION <silent>
tnoremap <F9>		<C-\><C-n>:FloatermNew<CR>	" OPTION <silent>, <leader>

" Kill current terminal
nnoremap <kt> :FloatermKill<CR>:FloatermPrev<CR>	" OPTION <silent>, <leader>
tnoremap to tk <C-\><C-n>:FloatermKill<CR>:FloatermPrev<CR>	" OPTION <silent>, <leader>

" Navigation next and previous terminal 
nnoremap to tn :FloatermNext<CR>	" OPTION <silent>, <leader>
tnoremap to tn <C-\><C-n>:FloatermNext<CR>	" OPTION <silent>, <leader>
nnoremap to tp :FloatermPrev<CR>	" OPTION <silent>, <leader>
tnoremap to tp <C-\><C-n>:FloatermPrev<CR>	" OPTION <silent>, <leader>

" Toggle terminal
nnoremap to tt :FloatermToggle<CR>	" OPTION <silent>, <leader>
tnoremap to tt <C-\><C-n>:FloatermToggle<CR>	" OPTION <silent>, <leader>

" Focus terminal 
nnoremap to tf <C-\><C-n><C-W><Left>	" OPTION <silent>, <leader>
tnoremap to tf <C-\><C-n><C-W><Left>	" OPTION <silent>, <leader>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Hotkey to run other console apps
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Git 
nnoremap to gl :FloatermNew! --position=bottomright --height=0.95 --width=0.7 --title='GitLog' git lg<CR>	" OPTION <silent>, <leader>
