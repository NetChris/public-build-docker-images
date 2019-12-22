#!/bin/sh
# Requires
# - VARIANT
# - BASE_BUILD_IMAGE
# - REF_TAG
# - BUILD_ID

export BUILD_IMAGE=${BASE_BUILD_IMAGE}/${VARIANT}:${REF_TAG}-${BUILD_ID}
export IMAGE_AUTHORS="NetChris Corp. (dockerimages@netchris.com)"
export IMAGE_BUILD_DATE=`date -u +"%Y-%m-%dT%H:%M:%SZ"`
export IMAGE_BUILD_ID=$BUILD_ID
