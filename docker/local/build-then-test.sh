#!/bin/sh
# Test script

export VARIANT="docker"
. "./common/local/build.sh"

docker run --rm ${BUILD_IMAGE} \
  -v /var/run/docker.sock:/var/run/docker.sock \
  /opt/netchris/build/scripts/docker/self-tests.sh
