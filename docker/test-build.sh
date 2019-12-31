#!/bin/sh
# Tests that can safely be run to ensure proper script configuration.

# Activate "strict" settings
. "/opt/scripts/netchris/strict.sh"

# TODO - Watch out for circ reference
. "./common/variables.sh"

. "./opt/scripts/netchris/variables/docker-build.sh"
. "./opt/scripts/netchris/functions/docker.sh"

docker_image_build
