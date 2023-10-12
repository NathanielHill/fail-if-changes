#!/bin/sh

git config --system --add safe.directory /github/workspace

if [ -z "$(git status --porcelain)" ];
then
  echo "No changes detected in working directory..."
  exit 0
else
  echo "Changes detected in working directory..."
  echo "$(git status)"
  exit 1
fi
