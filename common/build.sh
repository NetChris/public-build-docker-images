#!/bin/sh
# Requires
# - FROM_IMAGE
# - VARIANT
# - BASE_BUILD_IMAGE
# - REF_TAG
# - BUILD_ID

# Activate "strict" settings
. "./docker/build_scripts/strict.sh"

. "./common/variables.sh"

# We use the scripts from the Docker variant as they will be used similarly from the end-use builds
. "./docker/build_scripts/variables/docker-build.sh"
. "./docker/build_scripts/functions/docker.sh"

docker_image_build
