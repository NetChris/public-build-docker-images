#!/bin/sh
# TODO - If both this and common/variables-general.sh are always used together, combine them

export BUILD_IMAGE=${BASE_BUILD_IMAGE}/${REF_TAG}/${VARIANT}:${BUILD_ID}
export DOCKER_IMAGE_AUTHORS="NetChris Corp. <dockerimages@netchris.com>"
export IMAGE_PRODUCT_ID="${BASE_BUILD_IMAGE}/${VARIANT}"
