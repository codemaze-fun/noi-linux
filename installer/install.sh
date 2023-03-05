#!/bin/bash

export DEBIAN_FRONTEND="noninteractive"
export TZ="Asia/Chongqing"

# update packages
apt-get update -y

# install dev toolchains
apt-get install -y gcc g++ fpc
apt-get install -y python2.7 python2.7-dev python3.8 python3.8-dev
apt-get install -y gdb ddd
apt-get install -y lazarus geany codeblocks
apt-get install -y nano vim emacs gedit joe
apt-get install -y firefox xterm mc

# install sublime text
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/sublimehq-archive.gpg > /dev/null
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update -y
sudo apt-get install -y sublime-text

# install vscode
apt-get install -y wget
wget -O vscode_amd64.deb "https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64"
apt-get install -y -f ./vscode_amd64.deb
rm -f vscode_amd64.deb

# install arbiter
apt-get install -y libqt5printsupport5 libqt5widgets5 libqt5gui5 libqt5core5a
apt-get install -y "language-pack-zh-hans*"
apt-get install -y locales
apt-get install -y fonts-droid-fallback ttf-wqy-zenhei ttf-wqy-microhei fonts-arphic-ukai fonts-arphic-uming
wget -O arbiter.tar.gz "https://www.codemaze.dev/arbiter.tar.gz"
tar -C /usr/local -xzvf arbiter.tar.gz
rm -f arbiter.tar.gz

# install vnc-server
apt-get install -y xfce4 xfce4-goodies
apt-get install -y tightvncserver

# install for testing
apt-get install -y apt-show-versions
