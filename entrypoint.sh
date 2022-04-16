#!/bin/bash
set -e

WORK_DIR=$(pwd)

echo 'Running M3O Generator Action'
echo "Target: ${INPUT_TARGET}"
echo "Working directory ${WORK_DIR}"

cd ${INPUT_SERVICES_PATH}
m3o-client-gen ${INPUT_TARGET}

if [ ${INPUT_TARGET} = 'go' ]
then
    echo 'Formating m3o-go clients and examples'
    go fmt ./...
    
    echo 'Testing m3o-go clients'
    go test -v ./...
fi

# echo "::set-output name=success::$success"