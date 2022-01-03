#!/bin/sh
# Variables specific to "alpine" variant

export IMAGE_TITLE="Docker Image for build/deploy - Alpine variant"
ALPINE_VERSION="3.11.0"
export IMAGE_BUILD_ID_PREFIX=${ALPINE_VERSION}
export FROM_IMAGE="alpine:${ALPINE_VERSION}"
export IMAGE_VENDOR="Alpine Linux Development Team"
