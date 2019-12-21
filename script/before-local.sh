#!/bin/sh

export BASE_BUILD_IMAGE="registry.gitlab.com/cssl/netchris/public/build/docker/test01-image"
export REF_TAG=local
EPOCH=$(date +%s)
export BUILD_ID=$EPOCH
export CI_REGISTRY=registry.gitlab.com