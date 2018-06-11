FROM sourcemage

COPY root-home/.bash_profile /root/
COPY root-home/.bashrc /root/

ENV HOME=/root
WORKDIR /root
CMD [ "/bin/bash", "-l" ]