#!/bin/sh
# Variables specific to "alpine" variant

export DOCKER_IMAGE_TITLE="Docker Image for build/deploy - Alpine variant"
ALPINE_VERSION="3.11.0"
export IMAGE_BUILD_ID_PREFIX=${ALPINE_VERSION}
export DOCKER_IMAGE_PARENT="alpine:${ALPINE_VERSION}"
export DOCKER_IMAGE_VENDOR="Alpine Linux Development Team"
