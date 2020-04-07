#!/bin/bash -v

git config user.name "${U_NAME}"
git config user.email "${U_EMAIL}"

echo "https://${U_NAME}:${GITHUB_TOKEN}@github.com" > .git-credentials
git config --global credential.helper store

ionic login $IONIC_USERNAME $IONIC_PASSWORD
