# Python Template

[![CI](https://github.com/branchvincent/python-template/workflows/CI/badge.svg)](https://github.com/branchvincent/python-template/actions/workflows/ci.yaml)

A [Copier](https://github.com/copier-org/copier) template for a Python package based on my favorite tools. See the [rendered version](https://github.com/branchvincent/python-template/tree/rendered).

## Usage

> **Requires**: copier>=6.0.0a6

```sh
copier gh:branchvincent/python-template <dest>
```

## Features

- Package manager: [PDM](https://pdm.fming.dev/)
- Formatting: [Black](https://black.readthedocs.io/en/stable/) and [isort](https://isort.readthedocs.io/en/latest/)
- Testing: [pytest](https://docs.pytest.org/en/latest/)
- Linting: [flake8](https://flake8.pycqa.org/) and [pre-commit](https://pre-commit.com/)
- Typing: [mypy](https://mypy.readthedocs.io/en/stable/)
- Task runner: [taskipy](https://github.com/illBeRoy/taskipy)
- CI/CD: [Github Actions](https://docs.github.com/en/actions)
  - Automated versioning, changelog, and release via [Conventional Commits](https://www.conventionalcommits.org/)
  - Automated dependency updates via [Dependabot](https://dependabot.com/)
- Editor integration: [VS Code](https://code.visualstudio.com/)
- Documentation: [MkDocs](https://www.mkdocs.org/) (optional)
- Docker support (optional)

## Recommended Tools

- Managing Python versions? [pyenv](https://github.com/pyenv/pyenv)
- Building an API? [FastAPI](https://fastapi.tiangolo.com/)
- Building a CLI? [typer](https://typer.tiangolo.com/) or [click](https://click.palletsprojects.com/)
- Analyzing data? [pandas](https://pandas.pydata.org/)

## Goals

- Declarative project metadata via [pyproject.toml](https://snarky.ca/what-the-heck-is-pyproject-toml/)
- Automate as much as possible
