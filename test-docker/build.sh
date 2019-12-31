#!/bin/sh
# Build the test-docker variant

. "/opt/netchris/build/scripts/common/sets.sh"

export VARIANT="test-docker"

. "./common/variables.sh"

. "/opt/netchris/build/scripts/docker/variables/build.sh"

. "/opt/netchris/build/scripts/docker/functions.sh"

docker_image_build
