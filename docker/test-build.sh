#!/bin/sh
# Tests that can safely be run to ensure proper script configuration.

# Activate "strict" settings
. "/opt/netchris/build/docker/scripts/strict.sh"

. "./common/variables.sh"

. "/opt/netchris/build/docker/scripts/variables/build.sh"
. "/opt/netchris/build/docker/scripts/functions/docker.sh"

docker_image_build
