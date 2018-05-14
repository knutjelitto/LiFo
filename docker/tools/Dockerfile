FROM scratch

LABEL description="LFS tools container" 
LABEL version="8.2" 
LABEL maintainer="knut.jelitto@live.com"

ADD tools2.tar.xz /
ADD rootfs.tar.xz /
ADD fs/etc /etc

ENV PS1='(tools) [\u]: \w\$ '
ENV PATH=/sbin:/bin:/usr/sbin:/usr/bin:/tools/sbin:/tools/bin
ENV HOME=/root
ENV USER=root
ENV TERM=xterm-256color

WORKDIR /Pogo
WORKDIR /LiFo
WORKDIR /root

CMD [ "bash" ]