#!/usr/bin/env bash

## This script should be placed in pre-commit-hooks
set -xe
GIT_DIR="$(git rev-parse --show-toplevel)"

if [ -d "$GIT_DIR" ]; then
    cd "${GIT_DIR}" || exit 1


FILES=('add-domain' 'add-wildcard-domain' 'falsepositive.list' 'falsepositive_regex.list' 'falsepositive_rzd.list')

    for i in "${FILES[@]}"; do
        python3.11 "$GIT_DIR/tools/domain-sort.py" <"${i}" >"${i}.tmp" &&
            sed "/^$/d" "${i}.tmp" >"${i}" && rm "${i}.tmp"
    done
fi
