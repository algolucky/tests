#!/usr/bin/env bash

set -e

SCRIPT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)

docker build -f "$SCRIPT_DIR"/Dockerfile -t go-algorand:control --no-cache --progress plain .

docker build -f "$SCRIPT_DIR"/Dockerfile.in-path -t go-algorand:updater-in-path --no-cache --progress plain .

docker build -f "$SCRIPT_DIR"/Dockerfile.in-path-verify -t go-algorand:updater-in-path-verify --no-cache --progress plain .
