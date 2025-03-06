#!/usr/bin/env bash

# Run to update all Bandcamp data yml files.

if [ -z "$(git status --porcelain)" ]; then
  python3 -m pipenv install
  python3 -m pipenv run python pull-bandcamp-purchased-albums-to-data.py
  python3 -m pipenv run python pull-bandcamp-wishlisted-albums-to-data.py

  git add -A
  git commit -m '[AUTO] update bandcamp albums'
else
  git status

  printf '\nERROR: Working tree must be clean. Please commit or stash changes.\n\n'

  exit 1
fi

