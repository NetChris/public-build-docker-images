#!/bin/sh
# Build, then push the test-docker variant

. "./test-docker/build.sh"

docker_login

docker_image_push

docker_logout
