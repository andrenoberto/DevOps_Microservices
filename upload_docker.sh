#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath="andrenoberto/ml-microservice-api"

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker tag ml-microservice-api $dockerpath
docker login --username andrenoberto

# Step 3:
# Push image to a docker repository
docker push $dockerpath
