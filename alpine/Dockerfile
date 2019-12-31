ARG FROM_IMAGE
FROM ${FROM_IMAGE}

ARG FROM_IMAGE
LABEL com.netchris.image.from="${FROM_IMAGE}"

# The labeling schema.  If this model Dockerfile is changed, update this to the current epoch time.
LABEL com.netchris.image.labelschema="1576961103"

ARG IMAGE_AUTHORS
LABEL org.opencontainers.image.authors="${IMAGE_AUTHORS}"

ARG IMAGE_VENDOR
LABEL org.opencontainers.image.vendor="${IMAGE_VENDOR}"

ARG IMAGE_SOURCE_REPOSITORY
LABEL org.opencontainers.image.url="${IMAGE_SOURCE_REPOSITORY}"

ARG IMAGE_TITLE
LABEL org.opencontainers.image.title="${IMAGE_TITLE}"

ARG IMAGE_PRODUCT_ID
LABEL com.netchris.image.productid="${IMAGE_PRODUCT_ID}"

RUN apk --no-cache update \
	&& apk add --no-cache \
    curl=7.67.0-r0 \
    gettext

COPY image_root/ /

ARG IMAGE_REVISION
LABEL org.opencontainers.image.revision="${IMAGE_REVISION}"

ARG IMAGE_BUILD_ID
LABEL com.netchris.image.build="${IMAGE_BUILD_ID}"

ARG IMAGE_BUILD_DATE
LABEL org.opencontainers.image.created="${IMAGE_BUILD_DATE}"
