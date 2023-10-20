ARG BUILD_FROM
FROM $BUILD_FROM

# Install dependencies
RUN \
  apk add --no-cache ca-certificates iptables ip6tables \
  && rm -rf /var/cache/apk/*

# Setup environment
ENV NB_FOREGROUND_MODE=true

# Startup script
COPY run.sh /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]