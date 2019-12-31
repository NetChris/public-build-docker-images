#!/bin/sh

EPOCH=$(date +%s)
export REF_TAG=local
export BUILD_ID=$EPOCH

# TODO - All below belong in docker/
export BASE_BUILD_IMAGE="registry.gitlab.com/cssl/netchris/public/build/docker/images"
export IMAGE_REVISION=$BUILD_ID
export CI_REGISTRY=registry.gitlab.com
export IMAGE_SOURCE_REPOSITORY="https://gitlab.com/cssl/NetChris/public/build/docker/images"
