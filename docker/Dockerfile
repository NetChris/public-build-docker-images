ARG DOCKER_IMAGE_PARENT
FROM ${DOCKER_IMAGE_PARENT}

ARG DOCKER_IMAGE_PARENT
LABEL com.netchris.image.from="${DOCKER_IMAGE_PARENT}"

# The labeling schema.  If this model Dockerfile is changed, update this to the current epoch time.
LABEL com.netchris.image.labelschema="1576961103"

ARG DOCKER_IMAGE_AUTHORS
LABEL org.opencontainers.image.authors="${DOCKER_IMAGE_AUTHORS}"

ARG DOCKER_IMAGE_VENDOR
LABEL org.opencontainers.image.vendor="${DOCKER_IMAGE_VENDOR}"

ARG DOCKER_IMAGE_URL
LABEL org.opencontainers.image.url="${DOCKER_IMAGE_URL}"

ARG DOCKER_IMAGE_TITLE
LABEL org.opencontainers.image.title="${DOCKER_IMAGE_TITLE}"

ARG IMAGE_PRODUCT_ID
LABEL com.netchris.image.productid="${IMAGE_PRODUCT_ID}"

COPY image_root/ /

ARG DOCKER_IMAGE_REVISION
LABEL org.opencontainers.image.revision="${DOCKER_IMAGE_REVISION}"

ARG BUILD_ID
LABEL com.netchris.image.build="${BUILD_ID}"

ARG BUILD_DATE
LABEL org.opencontainers.image.created="${BUILD_DATE}"
