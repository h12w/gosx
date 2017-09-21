#!/bin/sh

docker build . -t h12w/gosx

#docker run --rm=true --network host --interactive --tty --volume $HOME/go:/root/go h12w/gosx bash

