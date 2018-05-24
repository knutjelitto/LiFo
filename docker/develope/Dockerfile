FROM debian:9

LABEL description="LFS develope container" 
LABEL version="8.2" 
LABEL maintainer="knut.jelitto@live.com" 

ENV TERM xterm-256color

RUN    apt-get update -y \
    && apt-get install -y apt-utils build-essential bison file gawk texinfo wget \
                          curl sudo man-db info less tree nano strace \
    && apt-get -q -y autoremove \ 
    && rm -rvf /var/lib/apt/lists/*

ENV PS1='(develope) [\u]: \w\$ '
ENV PATH=/sbin:/bin:/usr/sbin:/usr/bin
ENV HOME=/root
ENV USER=root
ENV TERM=xterm-256color
ENV LC_ALL=C.UTF-8

RUN mkdir --parents /LiFo /Pogo && \
    ln -s Pogo/Data /Data && \
    ln -s Pogo/Programs /Programs && \
    ln -s Pogo/System /System

WORKDIR /root

CMD [ "bash" ]