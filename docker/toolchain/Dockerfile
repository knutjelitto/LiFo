FROM debian:9
LABEL description="LFS toolchain build" 
LABEL version="8.2" 
LABEL maintainer="knut.jelitto@live.com" 

RUN    apt-get update -y \
    && apt-get upgrade -y \
    && apt-get install -y apt-utils \ 
    && apt-get install -y build-essential bison file gawk texinfo wget sudo genisoimage man-db info less rsync tree \ 
    && apt-get -q -y autoremove \ 
    && rm -rvf /var/lib/apt/lists/* 
