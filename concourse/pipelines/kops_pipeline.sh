#!/bin/bash

## In order to use this script
# 1. Login to the pipeline using fly -t ${TARGET} login ... 
[ "$VERBOSE" ] && set -x
set -euo pipefail
THIS_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

export TARGET=$1
export PIPELINE_NAME=$(basename "$0" | cut -f 1 -d '.')

fly -t "${TARGET}" sp -p "${PIPELINE_NAME}" -c "${THIS_DIR}/${PIPELINE_NAME}.yml" -l "${THIS_DIR}/../vars/vars.yml" -l "${THIS_DIR}/../vars/secret.yml"  --non-interactive
fly -t ${TARGET} up -p "${PIPELINE_NAME}"
