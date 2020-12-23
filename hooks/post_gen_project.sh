#!/usr/bin/env bash

set -euo pipefail

# Update poetry deps: https://github.com/python-poetry/poetry/issues/461
poetry lock -q
poetry show --tree | grep '^\w' | awk '{ print $1 }' | sed 's/$/@latest/' | xargs poetry add -Dq

# Initialize git
git init
git add --all
git commit -qm "chore: initial commit"

# Create GitHub repo
echo gh repo create '{{cookiecutter.project_slug}}' --description='{{cookiecutter.project_description}}' --private --confirm
