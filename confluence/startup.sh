#!/bin/bash


function provision()
{
    # start db only if local
    $start_db
    # run django-admin.py deploy
}

function run()
{
    $apache2_start
}

SCRIPT="`basename $0`"
if [ "$SCRIPT" == "provision" ]; then
    TASK="Provision"
elif [ "$SCRIPT" == "run" ]; then
    TASK="Run"
elif [ "$SCRIPT" == "provisionAndRun" ]; then
    TASK="ProvisionAndRun"
else
    TASK=${1:-Run}
fi


if [ "${TASK^^}" == "PROVISION" ]; then
    provision
elif [ "${TASK^^}" == "RUN" ]; then
    run
elif [ "${TASK^^}" == "PROVISIONANDRUN" ]; then
    provision
    run
else
    echo "Usage: $0 [Run|Provision|ProvisionAndRun]" >&2
    exit 1
fi