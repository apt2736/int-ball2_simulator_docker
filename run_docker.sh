#!/bin/bash

# Allow local connections to X11 display
xhost +local:root > /dev/null 2>&1 || true

# Set XAUTHORITY if not already exported
export XAUTHORITY=${XAUTHORITY:-$HOME/.Xauthority}
export DISPLAY=${DISPLAY:-:0}
export PWD=$(pwd)

# Start containers
docker compose up -d

# Enter container
docker exec -it ib2_simulator bash
