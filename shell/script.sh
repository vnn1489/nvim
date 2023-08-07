APT
- curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -

- with deb: ferdium

- apti curl tmux vim ibus-unikey git snapd gh curl flameshot net-tools openssh-server xz-utils at sshpass libreoffice python3-pip

code virtualbox-7.0 spotify-client

manual: code, spotify, brave

APPIMAGE
- balenaEtcher

- root: Nodejs, duplicati, 

- reseach network tools nload, bmon, iptraf, nethogs

- backup folder user, download, file .bashrc. vm virtual
- export data broswer
- save files script at the path `usr/local/bin`


- update && upgrade
- download file alias and save at folder user >>> push content of alias into .bashrc file
- tmux: download file config from github and save at user folder
- spotify: curl -sS https://download.spotify.com/debian/pubkey_7A3A762FAFD4A51F.gpg | sudo gpg --dearmor --yes -o /etc/apt/trusted.gpg.d/spotify.gpg
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list && sudo apt update -y && sudo apt install -y spotify-client
##


SCRIPT
sudo apt update -y && sudo apt upgrade -y
sudo apt install 
