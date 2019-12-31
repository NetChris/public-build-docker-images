#!/bin/sh
# Establish required variables from GitLab well-known environment variables

. "/opt/netchris/build/scripts/common/variables/gitlab.sh"

export BASE_BUILD_IMAGE="${CI_REGISTRY_IMAGE}"
export IMAGE_SOURCE_REPOSITORY="${CI_PROJECT_URL}"
export IMAGE_REVISION="${CI_COMMIT_SHA}"
export DOCKER_REGISTRY="${CI_REGISTRY}"
export DOCKER_REGISTRY_PASSWORD="${CI_REGISTRY_PASSWORD}"
export DOCKER_REGISTRY_USERNAME="${CI_REGISTRY_USER}"
