FROM ubuntu:20.04

# only for building, not persisted into the final image
ARG DEBIAN_FRONTEND="noninteractive"

ENV TZ="Asia/Chongqing"

RUN apt-get update -y
RUN apt-get install -y gcc g++ fpc
RUN apt-get install -y python2.7 python2.7-dev python3.8 python3.8-dev
RUN apt-get install -y gdb ddd
RUN apt-get install -y lazarus geany codeblocks
RUN apt-get install -y nano vim emacs gedit joe
RUN apt-get install -y firefox xterm mc

# install vscode
RUN apt-get install -y wget
RUN wget -O vscode_amd64.deb "https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64"
RUN apt-get install -y -f ./vscode_amd64.deb
RUN rm -f vscode_amd64.deb

# install vnc-server
RUN apt-get install -y xfce4 xfce4-goodies
RUN apt-get install -y tightvncserver

# launch tighvnc server
# CMD tightvncserver -passwd defaultpassword

# launch sshd

# sshd and vnc
EXPOSE 22
EXPOSE 5901


