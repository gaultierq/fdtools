#!/bin/sh
PWD="$( cd "$( dirname "$0" )" && pwd )"

echo "updating backend" >> $PWD/deploy.log
$PWD/deploy_updated_backend.sh >> $PWD/deploy.log 2>&1 &
