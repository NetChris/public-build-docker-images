#!/bin/sh
# Requires
# - VARIANT
# - BASE_BUILD_IMAGE
# - REF_TAG
# - BUILD_ID

export BUILD_IMAGE=${BASE_BUILD_IMAGE}/${VARIANT}:${REF_TAG}-${BUILD_ID}
export FROM_IMAGE="alpine:3.11.0"
