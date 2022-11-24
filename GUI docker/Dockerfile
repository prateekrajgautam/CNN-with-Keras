# FROM ubuntu
FROM ubuntu:18.04

LABEL AUTHOR='Dr. Prateek Raj Gautam'
LABEL email=prateek@cas.res.in
LABEL AppName=firefox


# RUN add-apt-repository universe
RUN apt update -y
# RUN apt update --fix-missing
# RUN apt install blender -y
# RUN apt install xauth xorg openbox gedit -y
RUN apt install firefox -y
# RUN apt install xauth -y
RUN apt install libcanberra-gtk-module libcanberra-gtk3-module -y
RUN apt clean

# RUN groupadd -g 1000 prateek
# RUN useradd -d /home.prateek -s /bin/bash -m prateek -u 1000 -g 1000

# VOLUME /tmp/.X11-unix /tmp/.X11-unix
# ENV DISPLAY DISPLAY

#COPY requirements.txt .
# RUN pip install -r requirements.txt
# RUN pipenv install -r requirements.txt


CMD [ "firefox"]



