#!/bin/sh

# These values are unlikely to change from project to project
export BUILD_IMAGE=${BASE_BUILD_IMAGE}/base:${REF_TAG}-${BUILD_ID}
