#!/bin/bash -v

gem install fir-cli
yarn global add @ionic/cli phonegap plugman @capacitor/core @capacitor/cli

mkdir -p $ANDROID_HOME/licenses
echo -e "d56f5187479451eabf01fb78af6dfcb131a6481e" >> $ANDROID_HOME/licenses/android-sdk-license
echo -e "84831b9409646a918e30573bab4c9c91346d8abd" >> $ANDROID_HOME/licenses/android-sdk-preview-license
