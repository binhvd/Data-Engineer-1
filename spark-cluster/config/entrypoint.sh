#!/usr/bin/env bash

set -e

# Start services in the background
service ssh start

if [[ $TAILSCALE_KEY ]]; then
    tailscale up --authkey ${TAILSCALE_KEY}

# Do nothing and just keep the container alive
sleep infinity
