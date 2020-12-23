#!/usr/bin/env bash

if ! [[ '{{ cookiecutter.project_slug }}' =~ ^[a-zA-Z][_a-zA-Z0-9]+$ ]]; then
    echo "ERROR: invalid Python module name"
    exit 1
fi
