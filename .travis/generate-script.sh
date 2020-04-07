#!/bin/bash -v

export UPDATED_FLAG=not updated

if [ ! -d "app" ]; then
  ionic start --appname molluscan --id com.xiaoji.molluscan app blank --capacitor

  # git add/commit
  git add app
  git commit -m "initial app commit"

  export UPDATED_FLAG=updated
fi

if [ "$UPDATED_FLAG" == "not updated" ]; then
  cd app
  pwd

  ionic integrations enable capacitor

  # git add/commit
  git add .
  git commit -m "integrations enable capacitor"

  export UPDATED_FLAG=updated
fi

echo display molluscan files

ls -la
