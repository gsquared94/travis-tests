#!/usr/bin/env bash

set -e -o pipefail

reqd=$(git diff --name-only "$TRAVIS_BRANCH"...HEAD | grep -v '^foo/')
if [ -z "$reqd" ]; then
  echo "Skipping integration tests since only docs changed"
  travis_terminate 0
fi
