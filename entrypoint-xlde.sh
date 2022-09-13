#!/bin/bash

USER_NAME=$(id -u -n)
echo $USER_NAME
if test -f "/tmp/.X1-lock"; then
	  rm /tmp/.X1-lock
  	rm /tmp/.X11-unix/X1
fi

# ls dir color 変更
echo "export LS_COLORS='di=01;36'" >> ~/.bashrc

/usr/bin/vncserver :1 -name ${VNC_DISPLAYNAME} -geometry ${VNC_RESOLUTION} -depth 24
tail -f /home/$USER_NAME/.vnc/*:1.log
