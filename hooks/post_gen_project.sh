#!/usr/bin/env bash

set -euo pipefail

# Update all poetry deps: https://github.com/python-poetry/poetry/issues/461
poetry lock -q
poetry show --tree | grep '^\w' | awk '{ print $1 }' | sed 's/$/@latest/' | xargs poetry add -Dq

# Initialize git repo
git init
echo gh repo create '{{cookiecutter.project_slug}}' --private --confirm --description='{{cookiecutter.project_description}}'
git add --all
git commit -qm "chore: initial commit"
