#!/bin/bash -v

if [ ! -d "app" ]; then
  ionic start --appname molluscan --id com.xiaoji.molluscan app blank --capacitor

  # git add/commit
  git add app
  git commit -m "initial app commit"

  export UPDATED_FLAG=updated
fi

echo $UPDATED_FLAG

if [ "${UPDATED_FLAG}" = "notupdated" ]; then
  cd app
  pwd

  ionic integrations enable capacitor
  npx cap init "ChuanYin" "com.xiaoji.molluscan"

  # git add/commit
  git add .
  git commit -m "integrations enable capacitor"

  export UPDATED_FLAG=updated
fi

echo display molluscan files

ls -la
