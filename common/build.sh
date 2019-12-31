#!/bin/sh
# Requires
# - FROM_IMAGE
# - VARIANT
# - BASE_BUILD_IMAGE
# - REF_TAG
# - BUILD_ID

# Activate "strict" settings
. "./common/build_scripts/strict.sh"

. "./common/variables.sh"

# We use the scripts from the Docker variant as they will be used similarly from the end-use builds
. "./docker/image_root/opt/netchris/build/scripts/docker/variables/build.sh"
. "./docker/image_root/opt/netchris/build/scripts/docker/functions/docker.sh"

docker_image_build
