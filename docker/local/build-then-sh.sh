#!/bin/sh
# Test script

export VARIANT="docker"
. "./common/local/build.sh"

docker run -it --rm ${BUILD_IMAGE} /bin/sh
