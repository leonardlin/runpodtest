#!/bin/bash

echo "Starting script"
sleep 20

if [ -n "${RUNPOD_POD_ID}" ]; then
    echo "RUNPOD ID: $RUNPOD_POD_ID"
    /usr/local/bin/runpodctl stop pod $RUNPOD_POD_ID
else
  echo "no runpod id set"
fi

sleep 10
printenv


echo "End script"
