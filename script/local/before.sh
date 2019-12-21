#!/bin/sh

export BASE_BUILD_IMAGE="registry.gitlab.com/cssl/netchris/public/build/docker/images"
export REF_TAG=local
EPOCH=$(date +%s)
export BUILD_ID=$EPOCH
export IMAGE_REVISION=$BUILD_ID
export CI_REGISTRY=registry.gitlab.com
export IMAGE_SOURCE_REPOSITORY="https://gitlab.com/cssl/NetChris/public/build/docker/alpine/image"
