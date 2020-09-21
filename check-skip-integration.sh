set -e -o pipefail

if git diff --name-only "$TRAVIS_BRANCH"...HEAD | grep -v '^foo/'; then
  return 0
fi

echo "Skipping integration tests since only docs changed"
travis_terminate 0