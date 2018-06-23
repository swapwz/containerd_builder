FROM golang

RUN apt-get update && \
    apt-get install -y btrfs-tools libseccomp-dev
