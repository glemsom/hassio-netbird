ARG BUILD_FROM
FROM $BUILD_FROM

# Install dependencies
RUN \
  apk add --no-cache ca-certificates iptables ip6tables curl tar gzip \
  && rm -rf /var/cache/apk/*

# Install netbird
COPY install.sh /
RUN ./install.sh 0.24.0

# Set shell
SHELL ["/bin/bash", "-o", "pipefail", "-c"]

# Copy root filesystem
COPY rootfs /

# Setup environment
ENV NB_FOREGROUND_MODE=true
ENV SKIP_UI_APP=true