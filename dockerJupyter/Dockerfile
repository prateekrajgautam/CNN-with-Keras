# FROM ubuntu
FROM python:3.8

LABEL AUTHOR='Dr. Prateek Raj Gautam'
LABEL email=prateek@cas.res.in

RUN useradd -ms /bin/bash prateek
RUN useradd -ms /bin/bash noroot

# RUN add-apt-repository universe
RUN apt-get update -y 
RUN apt-get install pipenv -y
COPY requirements.txt .


RUN mkdir /home/app
COPY ./app /home/app
RUN chmod +x /home/app/
RUN apt-get install python3 python3-pip pipenv -y
RUN apt-get install curl wget idle -y


# COPY ./script.sh /home/jupyter/script.sh
# RUN /home/jupyter/script.sh
# RUN apt-get install code -y






# ENTRYPOINT [ "/home/jupyter/script.sh" ]

RUN echo $PATH
RUN pip3 install --upgrade pip
RUN pip3 install numpy pandas tensorflow matplotlib jupyterlab

USER noroot
RUN echo $PATH
RUN export PATH=/home/noroot/.local/bin:$PATH

VOLUME ./VOLUME/ /home/app/
WORKDIR /home/app
# ENTRYPOINT [ "./script.sh" ]
CMD ["jupyter-lab","--allow-root","--ip","0.0.0.0"]
EXPOSE 8888



