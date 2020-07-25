#!/bin/bash -v

cd app

echo display current workfolder
pwd

#echo display environment params
#env

npx cap remove android
npx cap add android

npm install -g increase-memory-limit
increase-memory-limit

ionic cordova build android --no-confirm=yes --verbose --stacktrace
