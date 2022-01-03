#!/bin/sh

# Prepend IMAGE_BUILD_ID_PREFIX to BUILD_ID, if it is defined
if [ -z ${IMAGE_BUILD_ID_PREFIX+x} ]; then 
  export BUILD_ID=${BUILD_ID}
else 
  export BUILD_ID=${IMAGE_BUILD_ID_PREFIX}-${BUILD_ID}
fi

export BUILD_IMAGE=${BASE_BUILD_IMAGE}/${REF_TAG}/${VARIANT}:${BUILD_ID}
export BUILD_IMAGE_BUILD_ID_ONLY=${BASE_BUILD_IMAGE}/${REF_TAG}/${VARIANT}:${BUILD_ID}
export DOCKER_IMAGE_AUTHORS="NetChris Corp. <dockerimages@netchris.com>"
export BUILD_DATE=`date -u +"%Y-%m-%dT%H:%M:%SZ"`
export IMAGE_PRODUCT_ID="${BASE_BUILD_IMAGE}/${VARIANT}"
