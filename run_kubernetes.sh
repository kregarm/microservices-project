#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=martinkregar/udacity-project

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run --image=$dockerpath sklearn

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward pod/sklearn  8080:80