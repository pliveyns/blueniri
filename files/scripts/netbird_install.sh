#!/usr/bin/env bash

set -oue pipefail

# Netbird binary install from github
VERSION=0.65.3
rpmkeys --import https://pkgs.netbird.io/yum/repodata/repomd.xml.key
curl -L -o ./netbird_${VERSION}.tar.gz https://github.com/netbirdio/netbird/releases/download/v${VERSION}/netbird_${VERSION}_linux_amd64.tar.gz
tar xzf ./netbird_${VERSION}.tar.gz
mv netbird /usr/bin/netbird
chown root:root /usr/bin/netbird
chmod +x /usr/bin/netbird
rpm --install --nosignature --nodeps https://github.com/netbirdio/netbird/releases/download/v${VERSION}/netbird-ui_${VERSION}_linux_amd64.rpm
