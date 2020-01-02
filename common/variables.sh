#!/bin/sh
# Requires
# - VARIANT
# - BASE_BUILD_IMAGE
# - REF_TAG
# - BUILD_ID

export IMAGE_PRODUCT_ID="cssl/netchris/public/build/docker/images/${VARIANT}"
export IMAGE_BUILD_SUBDIRECTORY=${VARIANT}

. "./${IMAGE_BUILD_SUBDIRECTORY}/variables.sh"
