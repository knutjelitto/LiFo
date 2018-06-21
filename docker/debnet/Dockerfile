FROM microsoft/dotnet:2.1.300-sdk-stretch

RUN    apt-get update -y && apt-get install -y \
apt-transport-https \
xz-utils \
less \
tree \
man \
manpages \
dirmngr \
bzr \
lzip \
autoconf \
build-essential \
&& apt-get -q -y autoremove \ 
&& rm -rvf /var/lib/apt/lists/*

#RUN curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add - 
#RUN echo "deb [arch=amd64] https://packages.microsoft.com/repos/microsoft-debian-stretch-prod stretch main" > /etc/apt/sources.list.d/microsoft.list

#RUN apt-get update -y && \
#    apt-get install -y powershell

RUN   mkdir -p /Pogo && ln -sf Pogo/McMorph /McMorph

ENV TERM=xterm
ENV PATH=/sbin:/bin:/usr/sbin:/usr/bin:/LiFo/bin
ENV PSModulePath=/LiFo/pwsh/Modules

WORKDIR /root

#CMD [ "pwsh", "-NoLogo", "-NoExit", "-File", "/LiFo/pwsh/profile.ps1" ]
CMD [ "bash",  "-l" ]
