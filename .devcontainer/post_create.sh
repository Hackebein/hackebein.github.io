#!/bin/bash
set -e

# Install GPG key
echo -n "$GPG_PRIVATE_KEY" | base64 --decode | gpg --import
echo "$GPG_PRIVATE_ID:6:" | gpg --import-ownertrust

# Install xlog
go install github.com/emad-elsaid/xlog/cmd/xlog@latest

# Install dnscontrol types
docker run --rm -it -v "$(pwd)/dns:/dns" ghcr.io/stackexchange/dnscontrol write-types

# Install live-server
npm install -g live-server
