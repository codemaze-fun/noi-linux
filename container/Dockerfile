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

# install vnc-server or xrdp
RUN apt-get install -y xfce4 xfce4-goodies
# RUN apt-get install -y tightvncserver
RUN apt-get install -y xrdp
RUN adduser xrdp ssl-cert

# install openssh-server
RUN apt-get install -y openssh-server
RUN mkdir /var/run/sshd
RUN echo 'root:codemaze' | chpasswd
RUN sed -i 's/.*PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd
RUN sed -i 's/.*Banner.*/Banner \/etc\/ssh\/banner\.txt/' /etc/ssh/sshd_config

ADD --chown=root:root banner.txt /etc/ssh/
ADD --chown=root:root launch.sh /
RUN chmod +x /root/launch.sh

# add test script
ADD --chown=root:root test-container.sh /
RUN chmod +x /test-container.sh

# sshd and rdp
EXPOSE 22
EXPOSE 3389

# launch sshd and xrdp
#CMD ["/usr/sbin/sshd", "-D"]
#CMD ["xrdp"]
CMD ["bash", "/launch.sh"]
