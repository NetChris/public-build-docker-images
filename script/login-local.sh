#!/bin/sh

# TODO - Require GITLAB_PAT

echo "${GITLAB_PAT}" | docker login --username ignored --password-stdin $CI_REGISTRY
