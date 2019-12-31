#!/bin/sh
# Test script

. "./docker/local/build.sh"

docker run --rm ${BUILD_IMAGE} \
  -v /var/run/docker.sock:/var/run/docker.sock \
  /opt/netchris/build/scripts/docker/self-tests.sh
