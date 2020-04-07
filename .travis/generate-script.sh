#!/bin/bash -v

if [ ! -d "app" ]; then
  ionic start --appname molluscan --id com.xiaoji.molluscan app blank --capacitor

  # git add/commit
  git add app
  git commit -m "initial app commit"

  UPDATED_FLAG=updated
  export UPDATED_FLAG
fi

if [ "$UPDATED_FLAG" = "not updated" ]; then
  cd app
  pwd

  ionic integrations enable capacitor

  # git add/commit
  git add .
  git commit -m "integrations enable capacitor"

  UPDATED_FLAG=updated
  export UPDATED_FLAG
fi

echo display molluscan files

ls -la
