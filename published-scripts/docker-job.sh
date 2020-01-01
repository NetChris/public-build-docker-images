#!/bin/sh
# Run a build job in Docker
#
# Requires environment variables:
#   BUILD_ENVIRONMENT_IMAGE
#   CONTAINER_PATH
#   CONTAINER_SCRIPT
#   DOCKER_RUN_ENV_FILE - Path to a file with the additional environment variables you wish to pass to the container
#
# For more information on DOCKER_RUN_ENV_FILE, see material on "--env-file" at the "docker run" documentation:
#   https://docs.docker.com/engine/reference/commandline/run
#
# Once set up, execute:
#   curl -sSL https://gitlab.com/cssl/NetChris/public/build/docker/images/raw/master/published-scripts/docker-job.sh | sh -e

# exit immediately when a command fails and treat unset variables as an error and exit immediately
set -eu

docker run --rm \
  -v $(pwd):${CONTAINER_PATH} \
  -v /var/run/docker.sock:/var/run/docker.sock \
  --env-file ${DOCKER_RUN_ENV_FILE} \
  ${BUILD_ENVIRONMENT_IMAGE} \
  /bin/sh -c "cd ${CONTAINER_PATH} && ${CONTAINER_SCRIPT}"
