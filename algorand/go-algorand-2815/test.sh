#!/bin/bash

docker build . -f Dockerfile -t go-algorand:from-source --no-cache --progress plain
