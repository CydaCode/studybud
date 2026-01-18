#!/bin/bash

echo "Logging into Docker"
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin

docker build -t $DOCKER_USERNAME/projects:studybud_v1 .

docker push $DOCKER_USERNAME/projects:studybud_v1
