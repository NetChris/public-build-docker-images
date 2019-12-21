#!/bin/sh

. "./script/common/before.sh"

docker image build \
  -t ${BUILD_IMAGE} \
  -f ./${VARIANT}/Dockerfile \
  ./${VARIANT}/
