#!/bin/sh
# Establish required variables from GitLab well-known environment variables
# Also sets DOCKER_REGISTRY_PASSWORD and DOCKER_REGISTRY_USERNAME from 
# CI_REGISTRY_PASSWORD and CI_REGISTRY_USER, respectively
#
# This is separate from gitlab.sh here because we don't want to set
# these like this unless we know we're just using them to push to the
# registry.
#
# Deployment, on the other hand, needs credentials that provide long-term
# access to the registry from which images are pulled.
# CI_REGISTRY_PASSWORD and CI_REGISTRY_USER are only meant for very short-term
# access.  Using these credentials for deployment is bad because the initial
# deployment will often succeed, lulliing you into a false sense of security.
# Then, when a new node needs to fulfill the service's duties (i.e. one that
# hasn't pulled down the image before), it will fail because the service's
# deployed credentials are no longer valid.

. "/opt/netchris/build/scripts/docker/variables/gitlab.sh"

export DOCKER_REGISTRY_PASSWORD="${CI_REGISTRY_PASSWORD}"
export DOCKER_REGISTRY_USERNAME="${CI_REGISTRY_USER}"
