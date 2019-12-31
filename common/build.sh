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
. "./docker/build_scripts/variables.sh"

. "./docker/build_scripts/functions.sh"

docker_image_build
