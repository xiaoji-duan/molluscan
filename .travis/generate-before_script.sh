#!/bin/bash -v

git config user.name "${U_NAME}"
git config user.email "${U_EMAIL}"

echo "https://${U_NAME}:${GITHUB_TOKEN}@github.com" > ~/.git-credentials
git config --global credential.helper store
cat ~/.git-credentials

git remote -v
git remote rm origin
git remote add origin git@github.com:xiaoji-duan/molluscan.git
git remote -v
git push --set-upstream origin master

ionic login $IONIC_USERNAME $IONIC_PASSWORD
