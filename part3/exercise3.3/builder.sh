#!/bin/bash

# EXERCISE 3.3 SCRIPTING MAGIC 

if [[ $# -ne 2 ]]; then
  echo ""
  echo "This script requires 2 arguments and clones a GitHub repo, builds the Dockerfile and pushes it to Docker Hub."
  echo "Usage: ./builder.sh <GitHub repository> <Docker Hub repository>"
  echo "For example: ./builder.sh docker-hy/docker-hy.github.io tarekhiemstra/docker-hy"
  echo "IMPORTANT: The GitHub repo must have a Dockerfile and the Docker Hub repo must be created beforehand."
  echo ""
  exit 0;
fi

git clone git@github.com:$1.git || git clone https://github.com/$1.git || exit 1
cd "$(basename "$1")" || exit 1
docker build . -t $2 || sudo docker build . -t $2 || exit 1
docker push $2 || exit 1
