#!/bin/sh
# Run a build job in Docker
#
# Requires:
#  BUILD_ENVIRONMENT_IMAGE
#  CONTAINER_PATH
#  REF_TAG
#  BUILD_ID
#  BASE_BUILD_IMAGE
#  IMAGE_SOURCE_REPOSITORY
#  IMAGE_REVISION
#  DOCKER_REGISTRY
#  DOCKER_REGISTRY_PASSWORD
#  DOCKER_REGISTRY_USERNAME
#  CONTAINER_SCRIPT
#
# Then execute:
#   curl -sSL https://gitlab.com/cssl/NetChris/public/build/docker/images/raw/gitlab-variables/published-scripts/docker-job.sh | bash -e

# exit immediately when a command fails
# treat unset variables as an error and exit immediately
set -eu

docker run --rm \
  -v $(pwd):${CONTAINER_PATH} \
  -v /var/run/docker.sock:/var/run/docker.sock \
  --env REF_TAG \
  --env BUILD_ID \
  --env BASE_BUILD_IMAGE \
  --env IMAGE_SOURCE_REPOSITORY \
  --env IMAGE_REVISION \
  --env DOCKER_REGISTRY \
  --env DOCKER_REGISTRY_PASSWORD \
  --env DOCKER_REGISTRY_USERNAME \
  ${BUILD_ENVIRONMENT_IMAGE} \
  /bin/sh -c "cd ${CONTAINER_PATH} && ${CONTAINER_SCRIPT}"

# TODO - Finish README
