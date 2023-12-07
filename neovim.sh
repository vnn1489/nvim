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