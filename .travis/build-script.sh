#!/bin/bash -v

cd app

echo display current workfolder
pwd

#echo display environment params
#env

cordova platform remove android
cordova platform add android

npm install -g increase-memory-limit
increase-memory-limit

ionic cordova build android --verbose --stacktrace
