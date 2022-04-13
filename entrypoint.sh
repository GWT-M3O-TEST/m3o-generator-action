#!/bin/bash
set -e

echo 'Running M3O Generator Action'
echo "Target: ${INPUT_TARGET}"
WORK_DIR=$(pwd)
echo "Working directory ${WORK_DIR}"

cd ${INPUT_SERVICES_PATH}
m3o-client-gen ${INPUT_TARGET}

ls -al

cd ..
ls -al

# echo "::set-output name=success::$success"