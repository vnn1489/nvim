###############################################################################
# ---- PREREQUISITES: git, nodejs, bat, python, vim plug

# INSTALL PROVIDER
sudo npm install neovim -g
sudo pip install pynvim

# AFTER INSTALLED, GO TO INSIDE NEOVIM AND CHECK WITH COMMAND :checkhealth

# INSTALL vim plug
    # linux
    sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

    # Flatpak
    curl -fLo ~/.var/app/io.neovim.nvim/data/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# CHECK FILE plug.vim HAVE EXISTED IN PATH ~/.local/share/nvim/site/autoload/

# INSTALL nerd-font:
mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts && curl -fLO https://github.com/ryanoasis/nerd-fonts/raw/HEAD/patched-fonts/DroidSansMono/DroidSansMNerdFont-Regular.otf

# DOWNLOAD CONFIG FROM GITHUB

mkdir -p /home/UserName/.config/nvim/settings

cat NvimConfig >> /home/UserName/.config/nvim

mv PathOfDirNvimConfig* /home/UserName/.config/nvim/settings

# GO TO INSIDE NEOVIM & RUN COMMAND :PlugInstall TO INSTALL PLUGIN

# GO TO INSIDE VIM CONFIG FILE >>>> DELETE OR COMMENT NAME CONFIG PLUGGIN & GO TO INSIDE NEOVIM TO RUN COMMAND :source % AND :PlugClean TO UPDATE &: UNINSTALL PLUGIN
