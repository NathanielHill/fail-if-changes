#!/bin/sh

git config --system --add safe.directory /github/workspace

if [ -z "$(git status --porcelain)" ];
then
  exit 0
else
  exit 1
fi
