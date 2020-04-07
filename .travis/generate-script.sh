#!/bin/bash -v

export UPDATED_FLAG="not updated"

if [ ! -d "app" ]; then
  ionic start --appname molluscan --id com.xiaoji.molluscan app blank --capacitor

  # git add/commit
  git add app
  git commit -m "initial app commit"

  export UPDATED_FLAG="updated"
fi

cd app
pwd

ionic cordova plugin add cordova-plugin-app-version cordova-sqlite-storage

# git add/commit
git add .
git commit -m "update cordova plugin"

export UPDATED_FLAG="updated"

echo display molluscan files

ls -la
