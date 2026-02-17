#!/bin/bash

# Get IP
IP=$(hostname -I | awk '{print $1}')

# Parse arguments
RESET=false
for arg in "$@"; do
  if [[ "$arg" == "--reset" ]]; then
    RESET=true
  fi
done

# If --reset flag is provided, ask for confirmation
if [ "$RESET" = true ]; then
  read -p "Are you sure you want to reset all Docker containers? (y/N): " CONFIRM
  if [[ "$CONFIRM" == "y" || "$CONFIRM" == "Y" ]]; then
    echo "Stopping and removing containers..."
    CONTAINERS=$(docker ps -aq)
    if [ -n "$CONTAINERS" ]; then
      docker stop $CONTAINERS
      docker rm $CONTAINERS
    else
      echo "No containers to stop."
    fi
  else
    echo "Reset cancelled."
  fi
fi

echo "Minecraft server running on: $IP:25565"

docker compose up
