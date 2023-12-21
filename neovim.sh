

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
sudo apt update -y

#1 CHECK & INSTALL git, nodejs, python

#2 INSTALL PROVIDER
npm install neovim -g
pip install pynvim

# AFTER INSTALLED, GO TO INSIDE NEOVIM AND CHECK WITH COMMAND :checkhealth

# INSTALL vim plug

# CHECK FILE plug.vim HAVE EXISTED IN PATH ~/.local/share/nvim/site/autoload/

# DOWNLOAD FILE FOLDER SETUP neovim FROM GITHUB

mkdir -p /home/UserName/.config/nvim/settings

cat NvimConfig >> /home/UserName/.config/nvim

mv PathOfDirNvimConfig* /home/UserName/.config/nvim/settings

# GO TO INSIDE NEOVIM & RUN COMMAND :PlugInstall TO INSTALL PLUGIN

# GO TO INSIDE VIM CONFIG FILE >>>> DELETE OR COMMENT NAME CONFIG PLUGGIN & GO TO INSIDE NEOVIM TO RUN COMMAND :source % AND :PlugClean TO UPDATE &: UNINSTALL PLUGIN
