#!/usr/bin/env bash

set -euo pipefail

if ! [[ '{{ cookiecutter.project_slug }}' =~ ^[a-zA-Z][_a-zA-Z0-9]+$ ]]; then
    echo "ERROR: Module name must be PEP8 compliant: https://www.python.org/dev/peps/pep-0008/#package-and-module-names"
    exit 1
fi
