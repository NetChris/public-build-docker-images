#!/bin/sh
# Test script

. "./alpine/local/build.sh"

docker run -it --rm ${BUILD_IMAGE} \
  /bin/sh
