#/bin/bash

echo "Starting script"
printenv
sleep 20

if [ -n "${RUNPOD_POD_ID}" ]; then
    echo "runpod id set: $RUNPOD_POD_ID"
    runpodctl stop pod $RUNPOD_POD_ID &
else
  echo "no runpod id set"
fi

echo "End script"
