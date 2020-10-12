#!/bin/bash

docker pull registry.gitlab.com/clicknfid/fdbot:latest &&

docker rm -f fdbot ;

echo "Starting migration"
# migration
docker run --rm registry.gitlab.com/clicknfid/fdbot ./scripts/migrate.js && echo "migration ok" &&

# deployment
docker run --name fdbot -p 80:4000 -d registry.gitlab.com/clicknfid/fdbot && echo "deployment ok" &&

# cleaning up
docker system prune --force && echo "prune ok"
