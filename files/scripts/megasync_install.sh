#!/usr/bin/env bash

set -oue pipefail

# MegaSync binary install from mega.nz website
FEDORAVERSION=Fedora_43
MEGASYNCVERSION=megasync-6.1.1-1.1.x86_64
NAUTILUSMEGASYNCVERSION=nautilus-megasync-5.4.0-1.1.x86_64
rpm --install https://mega.nz/linux/repo/${FEDORAVERSION}/x86_64/${MEGASYNCVERSION}.rpm
rpm --install https://mega.nz/linux/repo/${FEDORAVERSION}/x86_64/${NAUTILUSMEGASYNCVERSION}.rpm
