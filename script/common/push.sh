#!/bin/sh
# Requires
# - BASE_BUILD_IMAGE
# - REF_TAG
# - BUILD_ID
# - Login to the registry in BASE_BUILD_IMAGE, if it requires auth

. "./script/common/before.sh"

docker image push ${BUILD_IMAGE}
