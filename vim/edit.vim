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



call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" ---- CONFIG FOR PLUGIN
" onedark plugin
syntax on
colorscheme onedark