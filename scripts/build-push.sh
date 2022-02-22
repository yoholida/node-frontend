#!/usr/bin/env bash

set -e
set -x

#echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin

docker build -t  registry.gitlab.com/yoholida/node-frontend:16.13 .

docker build -t registry.gitlab.com/yoholida/node-frontend:latest .

docker push registry.gitlab.com/yoholida/node-frontend:16.13

docker push registry.gitlab.com/yoholida/node-frontend:latest
