#!/bin/bash
[ "$VERBOSE" ] && set -x
set -euo pipefail
THIS_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

: ${1?"Usage: $0 concourse_target_name docker_username docker_password kops_version"}
: ${2?"Usage: $0 concourse_target_name docker_username docker_password kops_version"}
: ${3?"Usage: $0 concourse_target_name docker_username docker_password kops_version"}
: ${4?"Usage: $0 concourse_target_name docker_username docker_password kops_version"}



export TARGET=$1
export DOCKER_USERNAME=$2
export DOCKER_PASSWORD=$3
export KOPS_VERSION=$4
export PIPELINE_NAME=$(basename "$0" | cut -f 1 -d '.')

fly -t "${TARGET}" sp -p "${PIPELINE_NAME}" -c "${THIS_DIR}/${PIPELINE_NAME}.yml" \
                                            -v docker_username="${DOCKER_USERNAME}" \
                                            -v docker_password="${DOCKER_PASSWORD}" \
                                            -v kops_version="${KOPS_VERSION}" \
                                            --non-interactive
fly -t ${TARGET} up -p "${PIPELINE_NAME}"
