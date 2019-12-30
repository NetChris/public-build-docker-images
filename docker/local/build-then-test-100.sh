#!/bin/sh
# Test script

export VARIANT="docker"
. "./docker/local/build.sh"

docker run -it --rm ${BUILD_IMAGE} \
  /opt/scripts/netchris/tests.sh
