#!/bin/bash

docker pull registry.gitlab.com/clicknfid/fdbot:latest &&

docker rm -f fdbot ;

# migration
docker run --rm fdbot registry.gitlab.com/clicknfid/fdbot ./scripts/migrate.js &&

# deployment
docker run --name fdbot -p 80:4000 -d registry.gitlab.com/clicknfid/fdbot
