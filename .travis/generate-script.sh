#!/bin/bash -v

export UPDATED_FLAG="not updated"

if [ ! -d "app" ]; then
  ionic start --appname molluscan --id com.xiaoji.molluscan app blank

  export UPDATED_FLAG="updated"
  # git add/commit
  git add app
  git commit -m "initial app commit"
fi

cd app
ionic cordova plugin add cordova-plugin-app-version cordova-sqlite-storage

# git add/commit
git add .
git commit -m "update cordova plugin"

echo display molluscan files

ls -la
