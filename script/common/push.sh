#!/bin/sh
# Requires
# - BASE_BUILD_IMAGE
# - REF_TAG
# - BUILD_ID

. "./script/common/before.sh"

docker image push ${BUILD_IMAGE}
