#!/bin/sh
# Requires
# - FROM_IMAGE
# - VARIANT
# - BASE_BUILD_IMAGE
# - REF_TAG
# - BUILD_ID

. "./common/includes.sh"

docker_image_build

# Also tag the image with BUILD_IMAGE_BUILD_ID_ONLY 
docker tag $BUILD_IMAGE $BUILD_IMAGE_BUILD_ID_ONLY
