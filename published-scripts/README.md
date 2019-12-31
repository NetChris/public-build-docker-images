# Published scripts

The scripts in this directory are meant primarily for local test builds utilizing the images in this repository.  The main method to use these scripts is with the following form:

- `curl -sSL https://gitlab.com/cssl/NetChris/public/build/docker/images/raw/master/published-scripts/SCRIPT.sh | bash -e`

Unless there is a technical reason for doing so, **do not use these scripts from automated builds**.  Builds should be repeatable with the source code at-hand.  By using scripts here through `curl`, both repositories are free to change independently.  This means builds for which you cannot guarantee repeatability.

## `docker-job.sh` - Example

Given this:

``` bash
#!/bin/sh

# exit immediately when a command fails
# treat unset variables as an error and exit immediately
set -eu

EPOCH=$(date +%s)
export BUILD_ENVIRONMENT_IMAGE="registry.gitlab.com/cssl/netchris/public/build/docker/images/master/docker:123456789"
export CONTAINER_PATH="/builds/cssl/NetChris/public/build/docker/images"

export REF_TAG=local
export BUILD_ID=$EPOCH
export BASE_BUILD_IMAGE="registry.gitlab.com/cssl/netchris/elastic-stack/elasticsearch/images"
export IMAGE_SOURCE_REPOSITORY="https://gitlab.com/cssl/NetChris/elastic-stack/elasticsearch/images"
export IMAGE_REVISION=$BUILD_ID

export DOCKER_REGISTRY="registry.gitlab.com"
export DOCKER_REGISTRY_PASSWORD="${GITLAB_PAT}"
export DOCKER_REGISTRY_USERNAME="unused"

export CONTAINER_SCRIPT="./elasticsearch/build-then-push.sh"

curl -sSL https://gitlab.com/cssl/NetChris/public/build/docker/images/raw/master/published-scripts/docker-job.sh | sh -e
```

Use the example, but be sure to:

- Run the script from the root of your build project.
- Provide these environment variables from the calling context:
  - `GITLAB_PAT`
- Edit these variables to suit your situation:
  - `BUILD_ENVIRONMENT_IMAGE` - The image to use from where the build script runs
    - You can find available images in the container registry [here](https://gitlab.com/cssl/NetChris/public/build/docker/images/container_registry).
  - `CONTAINER_PATH` - This is not critical, but to fit with GitLab convention, change this to [`CI_PROJECT_DIR`](https://docs.gitlab.com/ee/ci/variables/predefined_variables.html#variables-reference)
    - The context is `cd`'d to this directory in the container as part of `docker run`
  - `CONTAINER_SCRIPT` - The script to run
    - This will be run after `cd $CONTAINER_PATH`
  - Remaining required Docker build variables:
    - `BASE_BUILD_IMAGE`
    - `IMAGE_SOURCE_REPOSITORY`
    - `IMAGE_REVISION`
  - If pushing an image to a Docker registry from within `BUILD_ENVIRONMENT_IMAGE`:
    - `DOCKER_REGISTRY`
    - `DOCKER_REGISTRY_PASSWORD`
    - `DOCKER_REGISTRY_USERNAME`
