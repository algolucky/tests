#!/bin/bash

docker build . -f Dockerfile.non-native-go -t go-algorand:non-native-go --no-cache --progress plain

# this should fail
docker build . -f Dockerfile -t go-algorand:from-source --no-cache --progress plain || true
