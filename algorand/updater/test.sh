#!/bin/bash

set -e

docker build -f Dockerfile -t go-algorand:control --no-cache --progress plain .

docker build -f Dockerfile.in-path -t go-algorand:updater-in-path --no-cache --progress plain .

docker build -f Dockerfile.in-path-verify -t go-algorand:updater-in-path-verify --no-cache --progress plain .