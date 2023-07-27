# /etc/skel/.bashrc OR /home/UserName/.bashrc

# COMMON
alias sp='systemctl suspend -i'
alias sn='systemctl poweroff -i'
alias rb='systemctl reboot -i'
alias ...='cd ../../../'
alias ....='../../../../'

# COMPRESSION & DECOMPRESSION
alias extract='tar -xvf'

# FLATPAK
alias flatpaki='flatpak install flathub -y'
alias flatpaku='flatpak uninstall --delete-data -y'
alias flatpakl='flatpak list'
alias flatpakr='flatpak run'

# SNAP
alias snapi='sudo snap install'
alias snapu='sudo snap remove'
alias snapl='snap list --all'

# APT
alias aptuu='sudo apt update && sudo apt upgrade -y'
alias aptudu='sudo apt update && sudo apt dist-upgrade -y'
alias apts='apt search'
alias aptsp='apt-cache pkgnames'
alias aptpd='apt show -a package'
alias apti='sudo apt install -y'
alias aptl='apt list --installed'
alias aptr='sudo apt remove -y'
alias aptp='sudo apt purge -y'
alias aptar='sudo apt autoremove -y' # REMOVE DEOENDENCIES OF APPS WAS REMOVE

# YUM
alias yums='yum search'
alias yumi='sudo yum install -y'
alias yumr='sudo yum remove -y'
alias yumu='yum upgrade -y'

# DNF
alias dnfu='dnf upgrade -y'

# NETWORK
alias ipp='curl icanhazip.com'
alias iplh='hostname -I'
alias centos='ssh centos@IP'
alias ubuntu='ssh ubuntu@IP'
alias speedtest='curl -s https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py | python3 -'

# APPS
alias svim='sudo vim'
alias snano='sudo nano'
alias pt3='python3'
alias tmuxls='tmux list-sections'
alias tmuxks='tmux-session -t'
alias tmuxkas='tmux kill-session -a'

