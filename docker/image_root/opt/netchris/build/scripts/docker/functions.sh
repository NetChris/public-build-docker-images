#!/bin/sh

# Build a Docker image with NetChris-standard variables:
#  BUILD_IMAGE
#  VARIANT
docker_image_build() {
  docker image build \
    -t ${BUILD_IMAGE} \
    -f ./${VARIANT}/Dockerfile \
    --build-arg FROM_IMAGE \
    --build-arg IMAGE_AUTHORS \
    --build-arg IMAGE_VENDOR \
    --build-arg IMAGE_TITLE \
    --build-arg IMAGE_PRODUCT_ID \
    --build-arg IMAGE_SOURCE_REPOSITORY \
    --build-arg IMAGE_REVISION \
    --build-arg IMAGE_BUILD_ID \
    --build-arg IMAGE_BUILD_DATE \
    ./${VARIANT}/
}

# Push a Docker image with NetChris-standard variables:
#  BUILD_IMAGE
docker_image_push() {
  docker image push ${BUILD_IMAGE}
}

# Login to Docker registry.  Requires:
#  DOCKER_REGISTRY
#  DOCKER_REGISTRY_PASSWORD
#  DOCKER_REGISTRY_USERNAME
docker_login() {
  # This form is used to avoid the warning normally emitted 
  # when --password is used instead of --password-stdin
  echo "${DOCKER_REGISTRY_PASSWORD}" | docker login --username ${DOCKER_REGISTRY_USERNAME} --password-stdin $DOCKER_REGISTRY
}

# Logout of Docker registry.  Requires:
#  DOCKER_REGISTRY
docker_logout() {
  docker logout $DOCKER_REGISTRY
}
