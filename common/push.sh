#!/bin/sh
# Requires
# - BASE_BUILD_IMAGE
# - REF_TAG
# - BUILD_ID
# - Login to the registry in BASE_BUILD_IMAGE, if it requires auth

. "./docker/build_scripts/variables/build.sh"
. "./docker/build_scripts/functions/docker.sh"

docker_image_push
