#!/bin/bash

echo "Hello Everyone !!"

docker_status=$(systemctl status docker | awk '/Active/ {print $3}' | tr -d "()")
docker_version=$(docker --version | awk '{print $3}'| tr -d ",")

echo "The docker version is = $docker_version"
echo "The docker status is = $docker_status"
