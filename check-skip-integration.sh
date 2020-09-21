#!/usr/bin/env bash

set -e -o pipefail

SKIP=$(git diff --name-only "$TRAVIS_BRANCH"...HEAD | grep -v '^foo/')
if [ -z "$SKIP" ]; then
echo Skipping integration tests since only docs changed
travis_terminate 0
fi
