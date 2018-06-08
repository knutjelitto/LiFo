FROM microsoft/dotnet:2.1-sdk-alpine

RUN    apk update \
    && apk upgrade \
    && apk add \
       man man-pages \
       git git-doc \
       subversion subversion-doc \
       llvm \
       clang clang-doc \
       cmake cmake-doc \
       less less-doc \
       tree tree-doc \
       bash bash-doc \
       coreutils coreutils-doc \
       findutils findutils-doc \
       diffutils diffutils-doc \
    && true

ENV PAGER='less --no-init'

WORKDIR /root

CMD [ "bash" ]