#!/bin/sh
# Requires
# - BASE_BUILD_IMAGE
# - REF_TAG
# - BUILD_ID
# - Login to the registry in BASE_BUILD_IMAGE, if it requires auth

. "./docker/image_root/opt/netchris/build/scripts/docker/variables/build.sh"
. "./docker/image_root/opt/netchris/build/scripts/docker/functions/docker.sh"

docker_image_push
