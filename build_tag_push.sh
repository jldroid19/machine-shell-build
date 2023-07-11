#!/bin/bash

echo "Cargo build static files"
mdbook build

echo "Building new image"
docker build -t machine-book:latest .

echo "Login to Digital Ocean Registry"
doctl registry login

echo "Tagging Site image"
docker tag machine-book:latest registry.digitalocean.com/sandboxcsp/machine-book:latest

echo 'Pushing container to Digital Ocean Repo'
docker push registry.digitalocean.com/sandboxcsp/machine-book:latest
