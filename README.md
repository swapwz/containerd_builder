# Create a image for build containerd & runc
##How to use it?
$ docker pull packself/containerd_builder
$ docker run -it --privileged \
    -v /var/lib/containerd \
    -v ${GOPATH}/src/github.com/opencontainers/runc:/go/src/github.com/opencontainers/runc \
    -v ${GOPATH}/src/github.com/containerd/containerd:/go/src/github.com/containerd/containerd \
    -e GOPATH=/go \
    -w /go/src/github.com/containerd/containerd packself/containerd_builder sh

From within our Docker container let's build `containerd`:
$ cd /go/src/github.com/containerd/containerd
$ make && make install

for building `runc`:
$ cd /go/src/github.com/opencontainers/runc
$ make BUILDTAGS='seccomp apparmor' && make install
