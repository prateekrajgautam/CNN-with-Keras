# FROM ubuntu
FROM python:3.8

LABEL AUTHOR='Dr. Prateek Raj Gautam'
LABEL email=prateek@cas.res.in

RUN useradd -ms /bin/bash prateek
RUN useradd -ms /bin/bash jupyterLabUser

# RUN add-apt-repository universe
RUN apt-get update -y 
RUN apt-get install pipenv -y
COPY requirements.txt .
# RUN pip install -r requirements.txt
# RUN pipenv install -r requirements.txt
RUN apt-get install python3 python3-pip pipenv -y


RUN mkdir /home/jupyter
COPY ./script.sh /home/jupyter/script.sh
RUN chmod +x /home/jupyter/script.sh
# RUN /home/jupyter/script.sh
# RUN apt-get install code -y






# ENTRYPOINT [ "/home/jupyter/script.sh" ]

RUN echo $PATH
RUN pip3 install --upgrade pip
RUN pip3 install numpy pandas tensorflow matplotlib jupyterlab

USER jupyterLabUser
RUN echo $PATH
RUN export PATH=/home/jupyterLabUser/.local/bin:$PATH

VOLUME ./VOLUME/ /home/jupyter/
WORKDIR /home/jupyter
EXPOSE 8888
# ENTRYPOINT [ "./script.sh" ]
CMD [ "jupyter-lab"]



