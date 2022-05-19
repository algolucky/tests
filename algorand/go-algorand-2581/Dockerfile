FROM docker.io/library/golang:1.17.9

# Basic dependencies.
ENV HOME /opt
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get install -y --no-install-recommends apt-utils curl git git-core bsdmainutils python3 && \
    mkdir -p /opt/algorand/bin && \
    mkdir -p /opt/algorand/data
ADD https://raw.githubusercontent.com/algolucky/go-algorand/75bc8b834d8f16de97362f922238d2928a9b9713/cmd/updater/update.sh /opt/algorand/bin/update.sh
RUN chmod 755 /opt/algorand/bin/update.sh
WORKDIR /opt/algorand/bin
RUN ./update.sh -i -c nightly -p /opt/algorand/bin -d /opt/algorand/data -n && \
    find /opt/algorand
