ARG BUILD_FROM
FROM $BUILD_FROM

ARG BUILD_ARCH=amd64
ARG BUILD_VERSION

# Install dependencies
RUN apk add --no-cache ca-certificates nftables=1.0.7-r2 curl tar gzip

# Add netbird
RUN ARCH="${BUILD_ARCH}" \
  && if [ "${BUILD_ARCH}" = "aarch64" ]; then ARCH="arm64"; fi \
  && if [ "${BUILD_ARCH}" = "armhf" ]; then ARCH="armv6"; fi \
  && curl -L -s "https://github.com/netbirdio/netbird/releases/download/v${BUILD_VERSION/-*/}/netbird_${BUILD_VERSION/-*/}_linux_${ARCH}.tar.gz" \
  | tar xzvpf - -C /usr/bin/ netbird


# Set shell
SHELL ["/bin/bash", "-o", "pipefail", "-c"]

# Copy root filesystem
COPY rootfs /

# Setup environment
ENV NB_FOREGROUND_MODE=true
ENV SKIP_UI_APP=true