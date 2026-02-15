#!/bin/bash
IP=$(hostname -I | awk '{print $1}')
echo "Minecraft server running on: $IP:25565"
docker compose up

