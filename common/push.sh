#!/bin/sh
# Requires
# - BASE_BUILD_IMAGE
# - REF_TAG
# - BUILD_ID
# - Login to the registry in BASE_BUILD_IMAGE, if it requires auth

. "./docker/image_root/opt/netchris/build/scripts/docker/variables/build.sh"
. "./docker/image_root/opt/netchris/build/scripts/docker/functions.sh"

docker_image_push

# Also push the image with BUILD_IMAGE_BUILD_ID_ONLY 
docker image push ${BUILD_IMAGE_BUILD_ID_ONLY}
