#!/bin/bash -v

cd app

cordova platform remove android
cordova platform add android@7.1.4

npm install -g increase-memory-limit
increase-memory-limit

ionic cordova build android --prod --verbose --stacktrace
