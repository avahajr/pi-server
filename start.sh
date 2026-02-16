#!/bin/bash
IP=$(hostname -I | awk '{print $1}')
docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)
echo "Minecraft server running on: $IP:25565"
docker compose up
