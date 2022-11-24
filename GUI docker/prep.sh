#!/bin/bash

sudo apt-get install xorg xauth openbox -y

$ docker build -f chrome.Dockerfile -t chrome:0.0.1 .
$ docker build -f firefox.Dockerfile -t firefox:0.0.1 .

$ xhost +
$ docker run -it --rm -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix firefox:0.0.1
$ xhost -


$ xhost +
$ docker run -it --rm -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix chrome:0.0.1
$ xhost -


$ docker run -it --rm -e DISPLAY=$DISPLAY -e DISPLAY_WIDTH=3840 -e DISPLAY_HEIGHT=2160 -v /tmp/.X11-unix:/tmp/.X11-unix firefox:0.0.1