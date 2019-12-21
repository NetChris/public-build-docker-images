#!/bin/sh

. "./script/before.sh"

docker image build \
  -t ${BUILD_IMAGE} \
   -f ./Dockerfile \
   .
