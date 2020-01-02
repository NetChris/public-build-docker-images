#!/bin/sh
# Build the test-docker variant

. "/opt/netchris/build/scripts/common/sets.sh"

export VARIANT="test-docker"
export IMAGE_BUILD_ID_PREFIX="1.2.3"
export IMAGE_PRODUCT_ID="cssl/netchris/public/build/docker/images/${IMAGE_BUILD_SUBDIRECTORY}"
export IMAGE_BUILD_SUBDIRECTORY=${IMAGE_BUILD_SUBDIRECTORY}
. "./${IMAGE_BUILD_SUBDIRECTORY}/variables.sh"

. "/opt/netchris/build/scripts/docker/variables/build.sh"
. "/opt/netchris/build/scripts/docker/functions.sh"

docker_image_build
