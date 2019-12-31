#!/bin/sh
# Test script

. "./alpine/local/build.sh"

docker run --rm ${BUILD_IMAGE} \
  /opt/netchris/build/scripts/alpine/self-tests.sh
