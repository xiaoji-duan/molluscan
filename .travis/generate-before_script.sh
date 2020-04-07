#!/bin/bash -v

git config user.name "${U_NAME}"
git config user.email "${U_EMAIL}"

ionic login $IONIC_USERNAME $IONIC_PASSWORD
