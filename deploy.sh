#!/bin/bash
set -ev && \
cd ./dist && \
remote_repo=${GITHUB_URL:-`git config remote.origin.url`} && \
remote_branch="gh-pages" && \
git init && \
git config user.name "marabesi" && \
git config user.email "matheus.marabesi@gmail.com" && \
git add . && \
git commit -m'build' && \
git push --force --quiet $remote_repo master:$remote_branch > /dev/null 2>&1 && \
rm -fr .git && \
cd ../
