#!/bin/sh
# Variables specific to "docker" variant

export VARIANT="docker"
export IMAGE_TITLE="Docker Image for build/deploy - Docker variant"
DOCKER_VERSION="stable"
export IMAGE_BUILD_ID_PREFIX=${DOCKER_VERSION}
export FROM_IMAGE="docker:${DOCKER_VERSION}"
export IMAGE_VENDOR="Docker"
