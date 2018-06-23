FROM golang

RUN apt-get update && \
    apt-get install -y brtfs-tools libseccomp-dev
