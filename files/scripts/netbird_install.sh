#!/usr/bin/env bash

# Tell this script to exit if there are any errors.
# You should have this in every custom script, to ensure that your completed
# builds actually ran successfully without any errors!
set -oue pipefail

# Netbird binary install from github
VERSION=0.61.0
curl -L -o ./netbird_${VERSION}.tar.gz https://github.com/netbirdio/netbird/releases/download/v${VERSION}/netbird_${VERSION}_linux_amd64.tar.gz
tar xzf ./netbird_${VERSION}.tar.gz
mv netbird /usr/bin/netbird
chown root:root /usr/bin/netbird
chmod +x /usr/bin/netbird
