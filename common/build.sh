#!/bin/sh
# Requires
# - FROM_IMAGE
# - VARIANT
# - BASE_BUILD_IMAGE
# - REF_TAG
# - BUILD_ID

. "./common/includes.sh"

docker_image_build
