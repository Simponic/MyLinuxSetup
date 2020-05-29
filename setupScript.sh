sudo apt install -y g++ vim libncurses5-dev gcc make git exuberant-ctags libssl-dev bison flex libelf-dev bc
sudo apt install -y deepin-terminal python3-pip python3-setuptools

gsettings set org.gnome.desktop.default-applications.terminal exec "deepin-terminal"

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install -y ./google-chrome-stable_current_amd64.deb
rm google-chrome-stable_current_amd64.deb

sudo -H pip3 install numpy Pillow matplotlib
sudo apt install -y python3-pygame
sudo apt install -y nodejs npm

sudo apt install -y apache2
sudo apt install -y gnome-tweak-tool

sudo apt install -y snapd snap
sudo snap install code --classic
sudo snap install spotify
wget https://images8.alphacoders.com/427/thumb-1920-427841.png
gsettings set org.gnome.desktop.background picture-uri thumb-1920-427841.png

sudo apt install -y openssh-server
sudo apt install -y python python-pip
