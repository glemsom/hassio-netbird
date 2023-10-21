#!/bin/sh
# Netbird binary package installer
#
# By Glenn Sommer
set -e

VERSION=$1

ARCH="$(uname -m)"

case "$ARCH" in
    x86_64|amd64)
        ARCH="amd64"
    ;;
    i?86|x86)
        ARCH="386"
    ;;
    aarch64|arm64)
        ARCH="arm64"
    ;;
    *)
        echo "Architecture ${ARCH} not supported"
        exit 3
    ;;
esac

FETCH_URL="https://github.com/netbirdio/netbird/releases/download/v${VERSION}/netbird_${VERSION}_linux_${ARCH}.tar.gz"

echo "Fething $FETCH_URL for version: $VERSION"
curl -L -o "./netbird_${VERSION}.tar.gz" ${FETCH_URL}

echo "Unpacking ./netbird_${VERSION}.tar.gz"
tar xf "./netbird_${VERSION}.tar.gz"

echo "Moving binary to /usr/bin/netbird"
mv netbird /usr/bin/netbird
chmod +x /usr/bin/netbird

echo "All done"