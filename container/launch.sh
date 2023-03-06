#!/bin/bash

/sbin/sshd

xrdp

x11vnc -create -forever -rfbauth /etc/x11vnc.pass
