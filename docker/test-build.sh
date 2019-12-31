#!/bin/sh
# Tests that can safely be run to ensure proper script configuration.

# Activate "strict" settings
. "/opt/scripts/netchris/strict.sh"

# TODO - Watch out for circ reference
. "./common/variables.sh"

. "./opt/scripts/netchris/variables/docker-build.sh"

. "./docker/build_scripts/functions.sh"

docker_image_build
