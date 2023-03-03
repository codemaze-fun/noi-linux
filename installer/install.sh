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

# install vscode
apt-get install -y wget
wget -O vscode_amd64.deb "https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64"
apt-get install -y -f ./vscode_amd64.deb
rm -f vscode_amd64.deb

# install vnc-server
apt-get install -y xfce4 xfce4-goodies
apt-get install -y tightvncserver

# install for testing
apt-get install -y apt-show-versions

