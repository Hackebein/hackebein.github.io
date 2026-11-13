#!/bin/bash
set -e

# Install xlog
go install github.com/emad-elsaid/xlog/cmd/xlog@latest

# Install dnscontrol types
docker run --rm -it -v "$(pwd)/dns:/dns" ghcr.io/stackexchange/dnscontrol write-types

# Install live-server
npm install -g live-server
