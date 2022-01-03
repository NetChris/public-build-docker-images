#!/bin/sh

# Build a Docker image
# Requires:
#  BUILD_IMAGE
#  IMAGE_BUILD_SUBDIRECTORY
docker_image_build() {

  # output, will also error if the variable is not defined and "set -u" is used
  echo "Building image: "
  echo " DOCKER_IMAGE_PARENT: ${DOCKER_IMAGE_PARENT}"
  echo " BUILD_IMAGE: ${BUILD_IMAGE}"
  echo " IMAGE_BUILD_SUBDIRECTORY: ${IMAGE_BUILD_SUBDIRECTORY}"
  echo " DOCKER_IMAGE_AUTHORS: ${DOCKER_IMAGE_AUTHORS}"
  echo " DOCKER_IMAGE_VENDOR: ${DOCKER_IMAGE_VENDOR}"
  echo " DOCKER_IMAGE_TITLE: ${DOCKER_IMAGE_TITLE}"
  echo " IMAGE_PRODUCT_ID: ${IMAGE_PRODUCT_ID}"
  echo " DOCKER_IMAGE_URL: ${DOCKER_IMAGE_URL}"
  echo " DOCKER_IMAGE_REVISION: ${DOCKER_IMAGE_REVISION}"
  echo " BUILD_ID: ${BUILD_ID}"
  echo " BUILD_DATE: ${BUILD_DATE}"

  docker image build \
    -t ${BUILD_IMAGE} \
    -f ./${IMAGE_BUILD_SUBDIRECTORY}/Dockerfile \
    --build-arg DOCKER_IMAGE_PARENT \
    --build-arg DOCKER_IMAGE_AUTHORS \
    --build-arg DOCKER_IMAGE_VENDOR \
    --build-arg DOCKER_IMAGE_TITLE \
    --build-arg IMAGE_PRODUCT_ID \
    --build-arg DOCKER_IMAGE_URL \
    --build-arg DOCKER_IMAGE_REVISION \
    --build-arg BUILD_ID \
    --build-arg BUILD_DATE \
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
