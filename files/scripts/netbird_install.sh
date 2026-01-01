#!/usr/bin/env bash

set -oue pipefail

# Netbird binary install from github
VERSION=0.61.0
curl -L -o ./netbird_${VERSION}.tar.gz https://github.com/netbirdio/netbird/releases/download/v${VERSION}/netbird_${VERSION}_linux_amd64.tar.gz
tar xzf ./netbird_${VERSION}.tar.gz
mv netbird /usr/bin/netbird
chown root:root /usr/bin/netbird
chmod +x /usr/bin/netbird
dnf install -y --skip-broken https://github.com/netbirdio/netbird/releases/download/v${VERSION}/netbird-ui_${VERSION}_linux_amd64.rpm
