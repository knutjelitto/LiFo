# name the portage image
FROM gentoo/portage:latest as portage

# image is based on stage3-amd64
FROM gentoo/stage3-amd64-nomultilib:latest

# copy the entire portage volume in
COPY --from=portage /usr/portage /usr/portage

# continue with image build ...
WORKDIR /root

CMD [ "/bin/bash", "-l" ]