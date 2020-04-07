#!/bin/bash -v

echo $UPDATED_FLAG

if [ "${UPDATED_FLAG}" = "updated" ]; then
  # git push
  # 提交 Github Pages
  #git push --force --quiet "https://${GITHUB_TOKEN}@${GITHUB_REF}" master:${P_BRANCH}
  git push "https://${GITHUB_TOKEN}@${GITHUB_REF}" HEAD:master
fi
