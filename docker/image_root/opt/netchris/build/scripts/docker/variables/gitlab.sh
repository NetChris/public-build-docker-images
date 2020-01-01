#!/bin/sh
# Establish required variables from GitLab well-known environment variables

. "/opt/netchris/build/scripts/common/variables/gitlab.sh"

export BASE_BUILD_IMAGE="${CI_REGISTRY_IMAGE}"
export IMAGE_SOURCE_REPOSITORY="${CI_PROJECT_URL}"
export IMAGE_REVISION="${CI_COMMIT_SHA}"
export DOCKER_REGISTRY="${CI_REGISTRY}"

# TODO - This is problematic:
# It's fine for image pushes to the local registry, but
# it is misleading for deployment.  The deployments will
# often work, but then if those services need to restart themselves
# these credentials will be long-gone.  We need something to explicitly
# pull in GitLab variables for image push vs. deployment.
export DOCKER_REGISTRY_PASSWORD="${CI_REGISTRY_PASSWORD}"
export DOCKER_REGISTRY_USERNAME="${CI_REGISTRY_USER}"
