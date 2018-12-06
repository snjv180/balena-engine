#!/bin/bash

AUTO_GOPATH=1 GOMAXPROCS=1 DOCKER_LDFLAGS="-s" VERSION="$version" ./hack/make.sh binary-balena
