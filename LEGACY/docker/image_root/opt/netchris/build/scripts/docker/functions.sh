#!/bin/sh

# Build a Docker image
# Requires:
#  BUILD_IMAGE
#  IMAGE_BUILD_SUBDIRECTORY
docker_image_build() {

  # output, will also error if the variable is not defined and "set -u" is used
  echo "Building image: "
  echo " FROM_IMAGE: ${FROM_IMAGE}"
  echo " BUILD_IMAGE: ${BUILD_IMAGE}"
  echo " IMAGE_BUILD_SUBDIRECTORY: ${IMAGE_BUILD_SUBDIRECTORY}"
  echo " IMAGE_AUTHORS: ${IMAGE_AUTHORS}"
  echo " IMAGE_VENDOR: ${IMAGE_VENDOR}"
  echo " IMAGE_TITLE: ${IMAGE_TITLE}"
  echo " IMAGE_PRODUCT_ID: ${IMAGE_PRODUCT_ID}"
  echo " IMAGE_SOURCE_REPOSITORY: ${IMAGE_SOURCE_REPOSITORY}"
  echo " IMAGE_REVISION: ${IMAGE_REVISION}"
  echo " IMAGE_BUILD_ID: ${IMAGE_BUILD_ID}"
  echo " IMAGE_BUILD_DATE: ${IMAGE_BUILD_DATE}"

  docker image build \
    -t ${BUILD_IMAGE} \
    -f ./${IMAGE_BUILD_SUBDIRECTORY}/Dockerfile \
    --build-arg FROM_IMAGE \
    --build-arg IMAGE_AUTHORS \
    --build-arg IMAGE_VENDOR \
    --build-arg IMAGE_TITLE \
    --build-arg IMAGE_PRODUCT_ID \
    --build-arg IMAGE_SOURCE_REPOSITORY \
    --build-arg IMAGE_REVISION \
    --build-arg IMAGE_BUILD_ID \
    --build-arg IMAGE_BUILD_DATE \
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
