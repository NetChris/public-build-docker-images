#!/bin/sh
# Establish required variables from GitLab well-known environment variables

export REF_TAG="${CI_COMMIT_REF_NAME}"
export BUILD_ID="${CI_PIPELINE_ID}"
