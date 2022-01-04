#!/bin/sh

# Build a Docker image
# Requires:
#  BUILD_IMAGE
#  IMAGE_BUILD_SUBDIRECTORY
docker_image_build() {

  docker pull ${DOCKER_IMAGE_PARENT}
  export DOCKER_IMAGE_PARENT_DIGEST=`docker inspect --format='{{index .RepoDigests 0}}' ${DOCKER_IMAGE_PARENT}`

  # output, will also error if the variable is not defined and "set -u" is used
  echo "Building image: "
  echo " BUILD_DATE: ${BUILD_DATE}"
  echo " BUILD_ID: ${BUILD_ID}"
  echo " BUILD_IMAGE: ${BUILD_IMAGE}"
  echo " BUILD_URL: ${BUILD_URL}"
  echo " DOCKER_IMAGE_AUTHORS: ${DOCKER_IMAGE_AUTHORS}"
  echo " DOCKER_IMAGE_DESCRIPTION: ${DOCKER_IMAGE_DESCRIPTION}"
  echo " DOCKER_IMAGE_DOCUMENTATION_URL: ${DOCKER_IMAGE_DOCUMENTATION_URL}"
  echo " DOCKER_IMAGE_PARENT: ${DOCKER_IMAGE_PARENT}"
  echo " DOCKER_IMAGE_PARENT_DIGEST: ${DOCKER_IMAGE_PARENT_DIGEST}"
  echo " DOCKER_IMAGE_PRODUCT_ID: ${DOCKER_IMAGE_PRODUCT_ID}"
  echo " DOCKER_IMAGE_REVISION: ${DOCKER_IMAGE_REVISION}"
  echo " DOCKER_IMAGE_SOURCE: ${DOCKER_IMAGE_SOURCE}"
  echo " DOCKER_IMAGE_VERSION: ${DOCKER_IMAGE_VERSION}"
  echo " IMAGE_BUILD_SUBDIRECTORY: ${IMAGE_BUILD_SUBDIRECTORY}"
  echo " IMAGE_PRODUCT_ID: ${IMAGE_PRODUCT_ID}"
  echo " DOCKER_IMAGE_URL: ${DOCKER_IMAGE_URL}"
  echo " DOCKER_IMAGE_TITLE: ${DOCKER_IMAGE_TITLE}"
  echo " DOCKER_IMAGE_VENDOR: ${DOCKER_IMAGE_VENDOR}"

# TODO - Go through build-arg values and remove what's not needed by Dockerfile
  docker image build \
    -t ${BUILD_IMAGE} \
    -f ./${IMAGE_BUILD_SUBDIRECTORY}/Dockerfile \
    --build-arg BUILD_DATE \
    --build-arg BUILD_ID \
    --build-arg BUILD_URL \
    --build-arg DOCKER_IMAGE_AUTHORS \
    --build-arg DOCKER_IMAGE_DESCRIPTION \
    --build-arg DOCKER_IMAGE_DOCUMENTATION_URL \
    --build-arg DOCKER_IMAGE_PARENT \
    --build-arg DOCKER_IMAGE_PARENT_DIGEST \
    --build-arg DOCKER_IMAGE_PRODUCT_ID \
    --build-arg DOCKER_IMAGE_REVISION \
    --build-arg DOCKER_IMAGE_SOURCE \
    --build-arg DOCKER_IMAGE_VERSION \
    --build-arg IMAGE_PRODUCT_ID \
    --build-arg DOCKER_IMAGE_URL \
    --build-arg DOCKER_IMAGE_TITLE \
    --build-arg DOCKER_IMAGE_VENDOR \
    ./${IMAGE_BUILD_SUBDIRECTORY}/
}

# Push a Docker image
# Requires:
#  BUILD_IMAGE
docker_image_push() {
  docker image push ${BUILD_IMAGE}
}

# Login to Docker registry
# Requires:
#  DOCKER_REGISTRY
#  DOCKER_REGISTRY_PASSWORD
#  DOCKER_REGISTRY_USERNAME
docker_login() {
  # This form is used to avoid the warning normally emitted 
  # when --password is used instead of --password-stdin
  echo "${DOCKER_REGISTRY_PASSWORD}" | docker login --username ${DOCKER_REGISTRY_USERNAME} --password-stdin $DOCKER_REGISTRY
}

# Logout of Docker registry
# Requires:
#  DOCKER_REGISTRY
docker_logout() {
  docker logout $DOCKER_REGISTRY
}
