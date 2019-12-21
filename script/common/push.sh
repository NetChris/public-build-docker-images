#!/bin/sh

. "./script/common/before.sh"

docker image push ${BUILD_IMAGE}
