sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# CHECK FILE plug.vim HAVE EXISTED IN PATH ~/.local/share/nvim/site/autoload/

# mkdir -p /home/UserName/.config/nvim

# DOWNLOAD FILE vim FROM GITHUB & PASTE /home/UserName/.config/nvim

# mv vim inti.vim

# INSERT BELLOW CONTENT INTO FILE /home/UserName/.config/nvim/init.vim



call plug#Begin()
    " Color Scheme
    Plug 'EdenEast/nightfox.nvim'
call plug#end()

# CHECK, IF git NOT EXISTED >>>> INSTALL git

# HOW TO AUTO RUN :PlugInstall INSIDE NEOVIM. IF CAN NOT RUN IT INSIDE NEOVIM, SHOW MESSAGE FOR USER TO RUN MANUAL FOR COMMAND :PlugInstall INSIDE NEOVIM

# EIXT NEOVIM & RE-RUN NEOVIM

###############################################################################
# ---- PREREQUISITES:

#0 UPDATE

#1 CHECK & INSTALL git, nodejs, python

#2 INSTALL PROVIDER
npm install neovim -g
pip install pynvim

# AFTER INSTALLED, GO TO INSIDE NEOVIM AND CHECK WITH COMMAND :checkhealth

# INSTALL vim plug

# EDIT CONTENT INSIDE FILE CONFIG
call plug#Begin('PathGoToPlugged')
    Plug 'EdenEast/nightfox.nvim' " Color Scheme
call plug#end()

# GO TO INSIDE NEOVIM & RUN COMMAND :PlugInstall TO INSTALL PLUGIN

# GO TO INSIDE VIM CONFIG FILE >>>> DELETE OR COMMENT NAME CONFIG PLUGGIN & GO TO INSIDE NEOVIM TO RUN COMMAND :source % AND :PlugClean TO UPDATE &: UNINSTALL PLUGIN