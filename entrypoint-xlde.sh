#!/bin/bash

USER_NAME=$(id -u -n)
echo $USER_NAME
if test -f "/tmp/.X1-lock"; then
	  rm /tmp/.X1-lock
  	  rm /tmp/.X11-unix/X1
fi

/usr/bin/vncserver :1 -name ${VNC_DISPLAYNAME} -geometry ${RESOLUTION} -depth 24
tail -f /home/$USER_NAME/.vnc/*:1.log
