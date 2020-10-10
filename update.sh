#!/bin/bash
PWD="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

echo "updating backend" >> $PWD/deploy.log
$PWD/deploy_updated_backend.sh >> $PWD/deploy.log &2>1 &
