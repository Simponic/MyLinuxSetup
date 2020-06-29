#Install stuff
sudo apt install -y g++ vim libncurses5-dev gcc make git exuberant-ctags libssl-dev bison flex libelf-dev bc
sudo apt install -y deepin-terminal python3-pip python3-setuptools 
sudo apt install gnome-tweak-tool

#Install chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install -y ./google-chrome-stable_current_amd64.deb
rm google-chrome-stable_current_amd64.deb

#Install some python modules
sudo -H pip3 install numpy Pillow matplotlib flask pandas
sudo apt install -y python3-pygame

#Install nodejs & npm
sudo apt install -y nodejs npm

#Install spotify and vscode
sudo apt install -y snapd snap
sudo snap install code --classic
sudo snap install spotify

#Set background
wget https://images8.alphacoders.com/427/thumb-1920-427841.png
gsettings set org.gnome.desktop.background picture-uri thumb-1920-427841.png

#Install openssh-server and python2
sudo apt install -y openssh-server
sudo apt install -y python 

#Install my vim config
bash install.sh
sudo bash install.sh

#Install LAMP stack
sudo bash lamp.sh
