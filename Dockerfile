FROM ubuntu:20.04

RUN apt-get update -y
RUN apt-get install -y gcc g++ fpc
RUN apt-get install -y python2.7 python2.7-dev python3.8 python3.8-dev
RUN apt-get install -y gdb ddd
RUN apt-get install -y lazarus geany codeblocks
RUN apt-get install -y nano vim emacs gedit joe
RUN apt-get install -y firefox xterm mc
