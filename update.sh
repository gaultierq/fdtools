#!/bin/sh
PWD="$(dirname $(readlink -f $0))"

echo "updating backend" >> $PWD/deploy.log
$PWD/deploy_updated_backend.sh >> $PWD/deploy.log 2>&1 &
