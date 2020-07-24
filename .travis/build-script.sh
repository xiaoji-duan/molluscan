#!/bin/bash -v

cd app

cordova platform remove android
cordova platform add android

npm install -g increase-memory-limit
increase-memory-limit

#ionic cordova build android --verbose --stacktrace
ionic cordova build --verbose --stacktrace
