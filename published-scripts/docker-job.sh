#!/bin/sh
# Run a build job in Docker
#
# Requires environment variables:
#   BUILD_ENVIRONMENT_IMAGE
#   CONTAINER_PATH
#   CONTAINER_SCRIPT
#   DOCKER_RUN_ENVARS - List of environment variables to provide to the docker container
#
# Once set up, execute:
#   curl -sSL https://gitlab.com/cssl/NetChris/public/build/docker/images/raw/master/published-scripts/docker-job.sh | sh -e

# exit immediately when a command fails and treat unset variables as an error and exit immediately
set -eu

# Additional envars, using a temp file
DOCKER_RUN_ENV_FILE=$(mktemp)

for envar_name in $DOCKER_RUN_ENVARS; do
  eval envar_value='$'$envar_name
  echo "$envar_name=$envar_value" >> $DOCKER_RUN_ENV_FILE
done

# Leverage mktemp to generate a random directory path (but not actually create anything)
TEMP_CONTAINER_PATH=$(mktemp -du)

# TODO - Remove
echo "DEBUG: Using $TEMP_CONTAINER_PATH"

docker run --rm \
  -v $(pwd):${TEMP_CONTAINER_PATH} \
  -v /var/run/docker.sock:/var/run/docker.sock \
  --env-file ${DOCKER_RUN_ENV_FILE} \
  ${BUILD_ENVIRONMENT_IMAGE} \
  /bin/sh -c "cd ${TEMP_CONTAINER_PATH} && ${CONTAINER_SCRIPT}"

rm $DOCKER_RUN_ENV_FILE
