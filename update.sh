#!/bin/sh

echo "updating backend" >> ./deploy.log
./deploy_updated_backend.sh >> ./deploy.log 2>&1 &
