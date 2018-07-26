#!/usr/bin/env sh
[ "$VERBOSE" ] && set -x

set -euo pipefail
THIS_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"


echo "${PUBLIC_KEY}" >> "${THIS_DIR}/id_rsa.pub"
cat ${THIS_DIR}/id_rsa.pub
