#!/bin/sh

. "./script/before.sh"

docker image push ${BUILD_IMAGE}
