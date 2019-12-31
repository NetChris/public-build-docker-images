#!/bin/sh
# Test script

export VARIANT="alpine"
. "./common/local/build.sh"

docker run --rm ${BUILD_IMAGE} \
  /opt/netchris/build/scripts/alpine/self-tests.sh
