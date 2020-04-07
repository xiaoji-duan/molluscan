#!/bin/bash -v

if [ ! -d "app" ]; then
  ionic start --appname molluscan --id com.xiaoji.molluscan app blank

  # git add/commit/push
  git add all
  git commit -m "initial app commit"
  git push --force --quiet "https://${GH_TOKEN}@${GH_REF}" master:${P_BRANCH}
fi

echo display molluscan files

ls -la app
