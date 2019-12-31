#!/bin/sh
# Test script

export VARIANT="alpine"
. "./common/local/build.sh"

docker run -it --rm ${BUILD_IMAGE} \
  /bin/sh
