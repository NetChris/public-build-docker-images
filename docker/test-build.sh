#!/bin/sh
# Tests that can safely be run to ensure proper script configuration.

. "/opt/netchris/build/scripts/common/sets.sh"

. "./common/variables.sh"

. "/opt/netchris/build/scripts/docker/variables/build.sh"

. "/opt/netchris/build/scripts/docker/functions.sh"

# Munge BUILD_IMAGE so that the image we build isn't used later
export BUILD_IMAGE=${BUILD_IMAGE}-TESTBUILD

docker_image_build
