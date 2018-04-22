#!/usr/bin/env bash

# Build docker image
docker build -t="alpine:latest" .

# List available images
docker images

# Run container
# docker run jenkins:latest
docker run -i -t alpine:latest /bin/bash

# Delete all images
# docker rmi $(docker images -q) --force
