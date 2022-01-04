#!/bin/sh
# Variables specific to "docker-build-powershell" variant

export VARIANT="docker-build-powershell"
export DOCKER_IMAGE_TITLE="Docker Image for building Docker containers with PowerShell"
DOCKER_VERSION="20.10.12-git"
export IMAGE_BUILD_ID_PREFIX=${DOCKER_VERSION}
export DOCKER_IMAGE_PARENT="docker:${DOCKER_VERSION}"

# Static labels.  These are set early in the Docker build so they should stay the same (relatively)
# over time.  Therefore:
# - Do not use variable expansion
# - Avoid changing them if possible
export DOCKER_IMAGE_VENDOR="Docker"
export DOCKER_IMAGE_PRODUCT_ID="netchris.build.docker.powershell"
export DOCKER_IMAGE_DESCRIPTION="Docker Image for building Docker containers.  Includes git and PowerShell Core installed on the base docker image."
export DOCKER_IMAGE_DOCUMENTATION_URL="https://gitlab.com/cssl/NetChris/public/build/docker/images/-/blob/master/README.md"

# From https://github.com/opencontainers/image-spec/blob/main/annotations.md#pre-defined-annotation-keys
# org.opencontainers.image.version version of the packaged software
#   The version MAY match a label or tag in the source code repository
#   version MAY be Semantic versioning-compatible
export DOCKER_IMAGE_VERSION="$DOCKER_VERSION"
