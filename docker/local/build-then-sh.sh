#!/bin/sh
# Test script

. "./docker/local/build.sh"

docker run -it --rm ${BUILD_IMAGE} /bin/sh
