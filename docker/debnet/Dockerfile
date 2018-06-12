FROM microsoft/dotnet:2.1.300-sdk-stretch

RUN    apt-get update -y \
    && apt-get install -y \
       apt-transport-https \
       less \
       tree \
    && apt-get -q -y autoremove \ 
    && rm -rvf /var/lib/apt/lists/*

RUN curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add -
 
RUN echo "deb [arch=amd64] https://packages.microsoft.com/repos/microsoft-debian-stretch-prod stretch main" > /etc/apt/sources.list.d/microsoft.list

RUN apt-get update -y && \
    apt-get install -y powershell

ENV TERM=xterm
ENV PATH=/sbin:/bin:/usr/sbin:/usr/bin:/LiFo/bin

WORKDIR /root

CMD [ "pwsh", "-NoLogo" ]