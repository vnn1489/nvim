" set compatibility to vim only
set nocompatible

" automatically wrap text that extends beyond the screen length
set wrap

" encoding
set encoding=utf-8

" set number
"set relativenumber

" status bar
set laststatus=2

set mouse=a                 " Enable mouse
set tabstop=2               " 
set shiftwidth=2            " 
set expandtab
set listchars=tab:\¦\       " Tab charactor 
set list
set foldmethod=syntax       " 
set foldnestmax=1
set foldlevelstart=0        "  
set number                  " Show line number
set ignorecase              " Enable case-sensitive 

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


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Key mappings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" Resize pane
nmap <M-Right> :vertical resize +1<CR>    
nmap <M-Left> :vertical resize -1<CR>
nmap <M-Down> :resize +1<CR>
nmap <M-Up> :resize -1<CR>

" Search a hightlighted text
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>
nmap /\ :noh<CR>






call plug#begin('~/.vim/plugged')
" Theme
  Plug 'joshdick/onedark.vim',                  " Dark theme

" File browser
  Plug 'preservim/nerdTree'                     " File browser  
  Plug 'Xuyuanp/nerdtree-git-plugin'            " Git status
  Plug 'ryanoasis/vim-devicons'                 " Icon
  Plug 'tiagofumo'
          \ .'/vim-nerdtree-syntax-highlight'
  Plug 'unkiwii/vim-nerdtree-sync'              " Sync current file 

" File search
  Plug 'junegunn/fzf', 
    \ { 'do': { -> fzf#install() } }            " Fuzzy finder 
  Plug 'junegunn/fzf.vim'

" Status bar
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

" Terminal
  Plug 'voldikss/vim-floaterm'                  " Float terminal

" Code intellisense
  Plug 'neoclide/coc.nvim', 
    \ {'branch': 'release'}                     " Language server protocol (LSP) 
  Plug 'pappasam/coc-jedi',                     " Jedi language server 
  Plug 'jiangmiao/auto-pairs'                   " Parenthesis auto 
  Plug 'alvan/vim-closetag'
  Plug 'mattn/emmet-vim' 
  Plug 'preservim/nerdcommenter'                " Comment code 
  Plug 'liuchengxu/vista.vim'                   " Function tag bar 
  
" Debugging
  Plug 'puremourning/vimspector'                " Vimspector

" Source code version control 
  Plug 'tpope/vim-fugitive'                     " Git infomation 
  Plug 'tpope/vim-rhubarb' 
  Plug 'airblade/vim-gitgutter'                 " Git show changes 
  Plug 'samoshkin/vim-mergetool'                " Git merge

call plug#end()

