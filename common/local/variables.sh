#!/bin/sh

EPOCH=$(date +%s)
export REF_TAG=local
export BUILD_ID=$EPOCH

export BASE_BUILD_IMAGE="registry.gitlab.com/cssl/netchris/public/build/docker/images"
export DOCKER_IMAGE_REVISION=$BUILD_ID
export CI_REGISTRY=registry.gitlab.com
export DOCKER_IMAGE_URL="https://gitlab.com/cssl/NetChris/public/build/docker/images"
