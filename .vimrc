" set compatibility to vim only
set nocompatible

" automatically wrap text that extends beyond the screen length
set wrap

" encoding
set encoding=utf-8

" status bar
set laststatus=2

set mouse=a             " Enable mouse
set tabstop=2
set shiftwidth=2
set expandtab
set listchars=tab:\¦\   " Tab charactor 
set list
set foldmethod=syntax
set foldnestmax=1
set foldlevelstart=0
set number              " Show line number
set ignorecase          " Enable case-sensitive 

" Disable backup
set nobackup
set nowb
set noswapfile

" Optimize 
set synmaxcol=200
set lazyredraw
au! BufNewFile,BufRead *.json set foldmethod=indent " Change foldmethod for specific filetype

syntax on

" Enable copying from vim to clipboard
if has('win32')
  set clipboard=unnamed  
else
  set clipboard=unnamedplus
endif

" Auto reload content changed outside
au CursorHold,CursorHoldI * checktime
au FocusGained,BufEnter * :checktime
autocmd FocusGained,BufEnter,CursorHold,CursorHoldI *
    \ if mode() !~ '\v(c|r.?|!|t)' && getcmdwintype() == ''
      \ | checktime 
    \ | endif
autocmd FileChangedShellPost *
    \ echohl WarningMsg 
    \ | echo "File changed on disk. Buffer reloaded."
    \ | echohl None

" => Key mappings
" Resize pane
nmap <M-Right> :vertical resize +1<CR>    
nmap <M-Left> :vertical resize -1<CR>
nmap <M-Down> :resize +1<CR>
nmap <M-Up> :resize -1<CR>

" Search a hightlighted text
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>
nmap /\ :noh<CR>