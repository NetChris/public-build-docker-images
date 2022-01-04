#!/bin/sh
#
# Script for pushing locally
# Expects there to be a Docker login established:
# 1. Get a PAT with write_registry scope from https://gitlab.com/cssl/NetChris/public/build/docker/images/-/settings/access_tokens
# 2. docker login registry.gitlab.com
# 3. Username: <anything>
# 4. Password: <PAT 

export VARIANT=docker-build-powershell

. "./common/local-test-vars.sh"
. "./common/push.sh"
