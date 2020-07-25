#!/bin/bash -v

cd app

echo display current workfolder
pwd

#echo display environment params
#env

npx cap add android

npm install -g increase-memory-limit
increase-memory-limit

ionic build android --no-confirm=yes --verbose --stacktrace
