#!/usr/bin/env bash

set -e -o pipefail

git diff --name-only "$TRAVIS_BRANCH"...HEAD | grep -v '^foo/' || {
    [ -z "$SKIP" ]; then
    echo Skipping integration tests since only docs changed
    travis_terminate 0
}
