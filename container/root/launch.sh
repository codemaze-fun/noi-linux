#!/bin/bash

# launch the ssh server
/sbin/sshd

# launch xrdp
xrdp

# launch xrdp-sesman
xrdp-sesman

# launch x11vnc
# the xfce4 will launch together with this
x11vnc -create -shared -repeat -forever -rfbauth /etc/x11vnc.pass \
        -env X11VNC_FINDDISPLAY_ALWAYS_FAILS=1 \
        -env X11VNC_CREATE_GEOM=2160x1440x24
