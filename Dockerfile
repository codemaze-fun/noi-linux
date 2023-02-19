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
RUN wget -O vscode.deb "https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64"
RUN dpkg -i vscode_amd64.deb
RUN rm -f code_amd64.deb

