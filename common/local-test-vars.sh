#!/bin/sh

export CI_REPOSITORY_URL="https://gitlab.com/cssl/NetChris/public/build/docker/images.git"
export CI_PROJECT_URL="https://gitlab.com/cssl/NetChris/public/build/docker/images"
export CI_REGISTRY_IMAGE="registry.gitlab.com/cssl/netchris/public/build/docker/images"
export CI_COMMIT_REF_NAME=main
export CI_PIPELINE_ID="12345"
export CI_COMMIT_SHA=deadbeefdeadbeefdeadbeefdeadbeefdeadbeef

export BASE_BUILD_IMAGE=${CI_REGISTRY_IMAGE}
export REF_TAG=${CI_COMMIT_REF_NAME}
export BUILD_ID=${CI_PIPELINE_ID}
export BUILD_URL="https://gitlab.com/cssl/NetChris/public/build/docker/images/-/pipelines/${CI_PIPELINE_ID}"
export DOCKER_IMAGE_URL=${CI_PROJECT_URL}
export DOCKER_IMAGE_REVISION=${CI_COMMIT_SHA}
export BUILD_DATE=`date -u +"%Y-%m-%dT%H:%M:%SZ"`
export DOCKER_IMAGE_SOURCE="${CI_REPOSITORY_URL}"
