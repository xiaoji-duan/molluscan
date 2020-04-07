#!/bin/bash -v

git config user.name "${U_NAME}"
git config user.email "${U_EMAIL}"

echo "https://${U_NAME}:${GITHUB_TOKEN}@github.com" > ~/.git-credentials
git config --global credential.helper store
cat ~/.git-credentials

git remote -v

ionic login $IONIC_USERNAME $IONIC_PASSWORD
