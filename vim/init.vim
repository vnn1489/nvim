" ---- FILE CONFIG
" file format:
  " vim: .vimrc
  " neovim: init.vim

" location:
  " vim: /home/UaerName
  " neovim: /home/UserName/.config/nvim

" plugin:
  " neovim: https://dotfyle.com/

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" ---- SETUP PLUGIN
call plug#begin('/home/linux/.config/nvim/plugged')
  " ---- theme
  Plug 'joshdick/onedark.vim'                  " dark theme

  " ---- file browser
  " vnn1489 Plug 'preservim/nerdTree'                     " file browser  
  " vnn1489 Plug 'Xuyuanp/nerdtree-git-plugin'            " git status
  " vnn1489 Plug 'ryanoasis/vim-devicons'                 " icon
  " vnn1489 Plug 'unkiwii/vim-nerdtree-sync'              " sync current file 
  " vnn1489 Plug 'jcharum/vim-nerdtree-syntax-highlight',
  " vnn1489  \ {'branch': 'escape-keys'}

  " ---- file search
  " vnn1489 Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }            " fuzzy finder 
  " vnn1489 Plug 'junegunn/fzf.vim'

  " ---- status bar
  " vnn1489 Plug 'vim-airline/vim-airline'
  " vnn1489 Plug 'vim-airline/vim-airline-themes'

  " ---- terminal
  " vnn1489 Plug 'voldikss/vim-floaterm'                  " float terminal

  " ---- code intellisense
  " vnn1489 Plug 'neoclide/coc.nvim', 
    \ {'branch': 'release'}                     " language server protocol (LSP) 
  " vnn1489 Plug 'jiangmiao/auto-pairs'                   " parenthesis auto
  " vnn1489 Plug 'alvan/vim-closetag'
  " vnn1489 Plug 'mattn/emmet-vim' 
  " vnn1489 Plug 'preservim/nerdcommenter'                " comment code 
  " Plug 'liuchengxu/vista.vim'                 " function tag bar
  " vnn1489 Plug 'alvan/vim-closetag'                     " auto close HTML/XML tag 
  " vnn1489  \ { 
  " vnn1489    \ 'do': 'yarn install '
  " vnn1489            \ .'--frozen-lockfile '
  " vnn1489            \ .'&& yarn build',
  " vnn1489    \ 'branch': 'main' 
  " vnn1489  \ }

  " ---- code syntax highlight
  " Plug 'yuezk/vim-js'                           " avascript
  " Plug 'MaxMEllon/vim-jsx-pretty'               " JSX/React
  " Plug 'jackguo380/vim-lsp-cxx-highlight'       " C/C++
  " Plug 'uiiaoo/java-syntax.vim'                 " Java
  " vnn1489 Plug 'sheerun/vim-polyglot'



  " ---- debugging
  " vnn1489 Plug 'puremourning/vimspector'                  " vimspector

  " ---- source code version control 
  " vnn1489 Plug 'tpope/vim-fugitive'                       " git infomation 
  " vnn1489 Plug 'tpope/vim-rhubarb' 
  " vnn1489 Plug 'airblade/vim-gitgutter'                   " git show changes 
  " vnn1489 Plug 'samoshkin/vim-mergetool'                  " git merge

  " ---- fold
  " vnn1489 Plug 'tmhedberg/SimpylFold'
call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ---- CONFIG FOR PLUGIN
" onedark plugin
syntax on
colorscheme onedark

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" ---- PURE SETUP
" ---- set compatibility to vim only
set nocompatible

" ---- automatically wrap text that extends beyond the screen length
set wrap

" ---- encoding
set encoding=utf-8

" ---- status bar
set laststatus=2

set mouse=a                                         " enable mouse
set tabstop=2
set shiftwidth=2
set expandtab
set listchars=tab:\¦\                               " tab charactor 
set list
set foldmethod=syntax
set foldnestmax=1
set foldlevelstart=0
set number                                          " show line number
" set nonumber                                      " hide line number
set ignorecase                                      " enable case-sensitive 

" ---- disable backup
set nobackup
set nowb
set noswapfile

" ---- optimize 
set synmaxcol=200
set lazyredraw
au! BufNewFile,BufRead *.json set foldmethod=indent " change foldmethod for specific filetype

syntax on

" ---- enable copying from vim to clipboard
if has('win32')
  set clipboard=unnamed  
else
  set clipboard=unnamedplus
endif

" ---- auto reload content changed outside
"vnn1489 au CursorHold,CursorHoldI * checktime
"vnn1489 au FocusGained,BufEnter * checktime
"vnn1489 autocmd FocusGained,BufEnter,CursorHold,CursorHoldI *
"vnn1489   \ if mode() !~ '\v(c|r.?|!|t)' && getcmdwintype() == ''
"vnn1489     \ | checktime 
"vnn1489   \ | endif
"vnn1489 autocmd FileChangedShellPost *
"vnn1489   \ echohl WarningMsg 
"vnn1489   \ | echo                                          " file changed on disk, buffer reloaded."
"vnn1489   \ | echohl None

" ---- key mappings

" ---- resize pane
nmap <M-Right> :vertical resize +1<CR>    
nmap <M-Left> :vertical resize -1<CR>
nmap <M-Down> :resize +1<CR>
nmap <M-Up> :resize -1<CR>

" ---- search a hightlighted text
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>
nmap /\ :noh<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" ---- SETTING & MAPPINGS
"vnn1489 let nvim_settings_dir = '/home/linux/.config/nvim/settings/'
"vnn1489 execute 'source '.nvim_settings_dir.'airline.vim'
"vnn1489 execute 'source '.nvim_settings_dir.'coc.vim'
"vnn1489 execute 'source '.nvim_settings_dir.'floaterm.vim'
"vnn1489 execute 'source '.nvim_settings_dir.'fzf.vim'
"vnn1489 execute 'source '.nvim_settings_dir.'git.vim'
"vnn1489 execute 'source '.nvim_settings_dir.'nerdcommenter.vim'
"vnn1489 execute 'source '.nvim_settings_dir.'nerdtree.vim'
"vnn1489 execute 'source '.nvim_settings_dir.'vimspector.vim'
"vnn1489 execute 'source '.nvim_settings_dir.'vista.vim'