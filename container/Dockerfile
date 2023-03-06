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
RUN apt-get install -y wget

# install sublime-text
RUN wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | gpg --dearmor | tee /etc/apt/trusted.gpg.d/sublimehq-archive.gpg > /dev/null
RUN echo "deb https://download.sublimetext.com/ apt/stable/" | tee /etc/apt/sources.list.d/sublime-text.list
RUN apt-get update -y
RUN apt-get install -y sublime-text

# install vscode
RUN wget -O vscode_amd64.deb "https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64"
RUN apt-get install -y -f ./vscode_amd64.deb
RUN rm -f vscode_amd64.deb

# add arbiter
RUN apt-get install -y libqt5printsupport5 libqt5widgets5 libqt5gui5 libqt5core5a
RUN apt-get install -y "language-pack-zh-hans*"
RUN apt-get install -y locales
RUN apt-get install -y fonts-droid-fallback ttf-wqy-zenhei ttf-wqy-microhei fonts-arphic-ukai fonts-arphic-uming
ADD --chown=root:root arbiter.tar.gz /usr/local/

# install vnc x11vnc
RUN apt-get install -y x11vnc xvfb
# set password for vnc
RUN x11vnc -storepasswd codem@ze /etc/x11vnc.pass
# launch default app in the x
RUN echo "exec startxfce4" > ~/.xinitrc && chmod +x ~/.xinitrc

# install xrdp
RUN apt-get install -y xfce4 xfce4-goodies
RUN apt-get install -y xrdp
RUN adduser xrdp ssl-cert
# override xrdp config
ADD root/etc/xrdp/xrdp.ini /etc/xrdp/xrdp.ini

# install openssh-server
RUN apt-get install -y openssh-server sudo
RUN mkdir /var/run/sshd
ADD --chown=root:root root/etc/ssh/sshd_config /etc/ssh/sshd_config
RUN echo 'root:Codem@ze' | chpasswd

# prep for codemaze user
RUN adduser codemaze
RUN echo 'codemaze:codem@ze' | chpasswd
RUN echo "codemaze    ALL=(ALL) NOPASSWD:ALL" | tee -a /etc/sudoers
ADD --chown=codemaze:codemaze root/home/codemaze/.xsession /home/codemaze/

ADD --chown=root:root root/etc/ssh/banner.txt /etc/ssh/

ADD --chown=root:root root/launch.sh /
RUN chmod +x /launch.sh

# add test script
ADD --chown=root:root root/check.sh /
RUN chmod +x /check.sh

# add debug tools
RUN apt-get install -y net-tools iputils-ping

# sshd vnc and rdp
EXPOSE 22
EXPOSE 3389

# launch the service(s)
CMD ["bash", "/launch.sh"]
