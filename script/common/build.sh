#!/bin/sh
# Requires
# - VARIANT
# - BASE_BUILD_IMAGE
# - REF_TAG
# - BUILD_ID

. "./script/common/before.sh"

docker image build \
  -t ${BUILD_IMAGE} \
  -f ./${VARIANT}/Dockerfile \
  ./${VARIANT}/
