#!/bin/sh
# Requires:
# - GITLAB_PAT
# - CI_REGISTRY

echo "${GITLAB_PAT}" | docker login --username ignored --password-stdin $CI_REGISTRY
