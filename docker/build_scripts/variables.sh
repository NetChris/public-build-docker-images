#!/bin/sh

# This is a good standard method for constructing the BUILD_IMAGE
export BUILD_IMAGE=${BASE_BUILD_IMAGE}/${REF_TAG}/${VARIANT}:${BUILD_ID}
export IMAGE_AUTHORS="NetChris Corp. (dockerimages@netchris.com)"
export IMAGE_BUILD_DATE=`date -u +"%Y-%m-%dT%H:%M:%SZ"`
export IMAGE_BUILD_ID=$BUILD_ID
