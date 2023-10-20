ARG BUILD_FROM
FROM $BUILD_FROM

# Install dependencies
RUN \
  apk add --no-cache ca-certificates iptables ip6tables \
  && rm -rf /var/cache/apk/*

# Set shell
SHELL ["/bin/bash", "-o", "pipefail", "-c"]

# Copy root filesystem
COPY rootfs /

# Setup environment
ENV NB_FOREGROUND_MODE=true