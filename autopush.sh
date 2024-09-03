#!/bin/bash

message="$1"

if [ -z "$message" ]; then
  echo "Usage : bash autopush.sh <commit message>"

fi

git add .
git commit -m "$message"
git push -u origin "$(git branch --show-current)"