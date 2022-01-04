############################################################################################
# Baseline NetChris Dockerfile standard
# v202201031528
# 
# File: https://gitlab.com/cssl/NetChris/Standards/docker/-/blob/master/Dockerfile
# 
# Unless there is a technical or process reason to do so, do not remove this header
############################################################################################

ARG DOCKER_IMAGE_PARENT_DIGEST
FROM ${DOCKER_IMAGE_PARENT_DIGEST}

# The labeling schema.  If this model Dockerfile is changed, update this to the current epoch time.
LABEL com.netchris.image.labelschema="1641252507"

# Unless absolutely necessary, do not change anything ABOVE this line
# Put the bulk of your build logic between the following lines:
# *****************************************************************************

# Install PowerShell Core
# https://docs.microsoft.com/en-us/powershell/scripting/install/install-alpine
# 1. install the requirements
# 2. Download the powershell '.tar.gz' archive
# 3. Create the target folder where powershell will be placed
# 4. Expand powershell to the target folder
# 5. Set execute permissions
# 6. Create the symbolic link that points to pwsh
# (All steps in a single RUN to save space)
RUN apk --no-cache update \
	&& apk add --no-cache \
    ca-certificates \
    less \
    ncurses-terminfo-base \
    krb5-libs \
    libgcc \
    libintl \
    libssl1.1 \
    libstdc++ \
    tzdata \
    userspace-rcu \
    zlib \
    icu-libs \
    curl \
  && apk -X https://dl-cdn.alpinelinux.org/alpine/edge/main add --no-cache \
    lttng-ust \
  && curl -L https://github.com/PowerShell/PowerShell/releases/download/v7.2.1/powershell-7.2.1-linux-alpine-x64.tar.gz -o /tmp/powershell.tar.gz \
  && mkdir -p /opt/microsoft/powershell/7 \
  && tar zxf /tmp/powershell.tar.gz -C /opt/microsoft/powershell/7 \
  && chmod +x /opt/microsoft/powershell/7/pwsh \
  && ln -s /opt/microsoft/powershell/7/pwsh /usr/bin/pwsh

# Start PowerShell
ENTRYPOINT [ "pwsh" ]

# *****************************************************************************
# Unless absolutely necessary, do not change anything below this line

ARG DOCKER_IMAGE_PRODUCT_ID
ARG DOCKER_IMAGE_PARENT
ARG DOCKER_IMAGE_PARENT_DIGEST
ARG DOCKER_IMAGE_AUTHORS
ARG DOCKER_IMAGE_VENDOR
ARG DOCKER_IMAGE_TITLE
ARG DOCKER_IMAGE_DESCRIPTION
ARG DOCKER_IMAGE_URL
ARG DOCKER_IMAGE_SOURCE
ARG DOCKER_IMAGE_DOCUMENTATION_URL
ARG DOCKER_IMAGE_VERSION
ARG DOCKER_IMAGE_REVISION

LABEL com.netchris.image.parent="${DOCKER_IMAGE_PARENT}"
LABEL com.netchris.image.product.id="${DOCKER_IMAGE_PRODUCT_ID}"
LABEL org.opencontainers.image.authors="${DOCKER_IMAGE_AUTHORS}"
LABEL org.opencontainers.image.base.digest=${DOCKER_IMAGE_PARENT_DIGEST}
LABEL org.opencontainers.image.base.name="${DOCKER_IMAGE_PARENT}"
LABEL org.opencontainers.image.description="${DOCKER_IMAGE_DESCRIPTION}"
LABEL org.opencontainers.image.documentation="${DOCKER_IMAGE_DOCUMENTATION_URL}"
LABEL org.opencontainers.image.revision="${DOCKER_IMAGE_REVISION}"
LABEL org.opencontainers.image.source="${DOCKER_IMAGE_SOURCE}"
LABEL org.opencontainers.image.title="${DOCKER_IMAGE_TITLE}"
LABEL org.opencontainers.image.url="${DOCKER_IMAGE_URL}"
LABEL org.opencontainers.image.vendor="${DOCKER_IMAGE_VENDOR}"
LABEL org.opencontainers.image.version="${DOCKER_IMAGE_VERSION}"

# The most volatile arguments/labels.  
# Place these absolutely last in the Dockerfile.
ARG BUILD_ID
ARG BUILD_URL
ARG BUILD_DATE
LABEL com.netchris.image.build="${BUILD_ID}"
LABEL com.netchris.image.buildurl="${BUILD_URL}"
LABEL org.opencontainers.image.created="${BUILD_DATE}"
