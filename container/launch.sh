#!/bin/bash

# launch the ssh server
/sbin/sshd

# launch xrdp
xrdp

# launch xrdp-sesman
xrdp-sesman

# launch x11vnc
# the xfce4 will launch together with this
x11vnc -create -forever -rfbauth /etc/x11vnc.pass
