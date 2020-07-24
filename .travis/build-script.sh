#!/bin/bash -v

cd app

cordova platform remove android
cordova platform add android@7.1.4

ionic cordova build android --prod --verbose --stacktrace
