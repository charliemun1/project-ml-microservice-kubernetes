#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=charliemun/ml-microservice:v1.0.1
deployment=ml-microservice

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deploy $deployment --image=$dockerpath


# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward deployment/$deployment --address 0.0.0.0 8000:80

