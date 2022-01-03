#!/bin/sh
# Variables specific to "docker" variant

export VARIANT="docker"
export DOCKER_IMAGE_TITLE="Docker Image for build/deploy - Docker variant"
DOCKER_VERSION="stable"
export IMAGE_BUILD_ID_PREFIX=${DOCKER_VERSION}
export DOCKER_IMAGE_PARENT="docker:${DOCKER_VERSION}"
export DOCKER_IMAGE_VENDOR="Docker"
