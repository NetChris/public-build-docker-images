#!/bin/sh
# Requires
# - FROM_IMAGE
# - VARIANT
# - BASE_BUILD_IMAGE
# - REF_TAG
# - BUILD_ID

. "./common/variables.sh"

. "./docker/build_scripts/variables.sh"

. "./docker/build_scripts/functions.sh"

docker_image_build
