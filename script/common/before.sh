#!/bin/sh
# Requires
# - VARIANT
# - BASE_BUILD_IMAGE
# - REF_TAG
# - BUILD_ID

# These values are unlikely to change from project to project
export BUILD_IMAGE=${BASE_BUILD_IMAGE}/${VARIANT}:${REF_TAG}-${BUILD_ID}
