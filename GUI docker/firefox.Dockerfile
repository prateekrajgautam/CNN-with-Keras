FROM ubuntu:14.04

RUN apt-get update && apt-get install -y firefox

# Replace 1000 with your user / group id
RUN export uid=1000 gid=1000 && \
    mkdir -p /home/prateek && \
    echo "prateek:x:${uid}:${gid}:Prateek,,,:/home/prateek:/bin/bash" >> /etc/passwd && \
    echo "prateek:x:${uid}:" >> /etc/group && \
    echo "prateek ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/prateek && \
    chmod 0440 /etc/sudoers.d/prateek && \
    chown ${uid}:${gid} -R /home/prateek

USER prateek
ENV HOME /home/prateek
CMD /usr/bin/firefox