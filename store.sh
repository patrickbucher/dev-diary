#!/usr/bin/env bash

git add .
today="$(date +'%A, %d %B %Y')"
git commit -m "diary entry for ${today}"
git push
