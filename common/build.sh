#!/bin/sh
# Requires
# - FROM_IMAGE
# - VARIANT
# - BASE_BUILD_IMAGE
# - REF_TAG
# - BUILD_ID

. "./common/before.sh"

# TODO - Labels

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
