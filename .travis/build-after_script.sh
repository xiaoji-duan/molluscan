#!/bin/bash -v
tree -x

ls $TRAVIS_BUILD_DIR/app/platforms/android/app/build/outputs/apk/debug/
