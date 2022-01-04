#!/bin/sh
#
# Script for building locally

export VARIANT=docker-build-powershell

. "./common/local-test-vars.sh"
. "./common/build.sh"

docker image inspect ${BUILD_IMAGE} | jq .[0].Config.Labels