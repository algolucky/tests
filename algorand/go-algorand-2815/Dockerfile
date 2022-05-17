FROM registry.fedoraproject.org/fedora-toolbox:36

ENV GOPATH="/go"

ENV PATH="${GOPATH}/bin:${PATH}"

RUN sudo dnf install -y git go make && \
    git clone https://github.com/algorand/go-algorand.git && \
    cd go-algorand && \
    ./scripts/configure_dev.sh && \
    ./scripts/buildtools/install_buildtools.sh && \
    make install
