#!/bin/bash
set -e

echo 'Running M3O Generator Action'
echo "Target: ${INPUT_TARGET}"

m3o-client-gen ${INPUT_TARGET}

# echo "::set-output name=success::$success"