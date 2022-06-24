FROM registry.fedoraproject.org/fedora-toolbox:36

ENV GOPATH="/go"

ENV PATH="${GOPATH}/bin:${PATH}"

RUN dnf install -y git-2.35.1 golang-1.18 make-4.3 && \
    dnf clean all && \
    git clone https://github.com/algolucky/go-algorand.git -b fix/fedora-dependencies

WORKDIR /go-algorand

RUN ./scripts/configure_dev.sh && \
    ./scripts/buildtools/install_buildtools.sh && \
    make install
