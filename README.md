# Python Template

[![CI](https://github.com/branchvincent/python-template/workflows/CI/badge.svg)](https://github.com/branchvincent/python-template/actions/workflows/ci.yaml)

A [Copier](https://github.com/copier-org/copier) template for a Python package based on my favorite tools. See the [rendered version](https://github.com/branchvincent/python-template/tree/rendered).

## Usage

```sh
pipx run copier copy --trust gh:branchvincent/python-template <dest>
```

## Features

- Package manager: [Poetry](https://python-poetry.org/)
- Formatting: [Ruff](https://docs.astral.sh/ruff/formatter/)
- Testing: [pytest](https://docs.pytest.org/en/latest/)
- Linting: [Ruff](https://docs.astral.sh/ruff/linter/) and [pre-commit](https://pre-commit.com/)
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
- Logging? [Loguru](https://github.com/Delgan/loguru)

## Goals

- Declarative project metadata via [pyproject.toml](https://snarky.ca/what-the-heck-is-pyproject-toml/)
- Automate as much as possible
