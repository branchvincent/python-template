# Copier Python

A [Copier](https://github.com/copier-org/copier) template for a Python package based on my favorite tools.

## Usage

> **Requires**: Copier 6.0.0a6+

```sh
copier gh:branchvincent/cookiecutter-python
```

## Features

- Package manager: [Poetry](https://python-poetry.org/)
- Formatting: [black](https://black.readthedocs.io/en/stable/) and [isort](https://isort.readthedocs.io/en/latest/)
- Testing: [Pytest](https://docs.pytest.org/en/latest/)
- Linting: [flakehell](https://flakehell.readthedocs.io/) and [pre-commit](https://pre-commit.com/)
- Typing: [mypy](https://mypy.readthedocs.io/en/stable/)
- CI/CD: [Github Actions](https://docs.github.com/en/actions)
  - Automated versioning and release notes via [Conventional Commits](https://www.conventionalcommits.org/)
  - Automated [PyPI](https://pypi.org/) upload
- Task runner: [taskipy](https://github.com/illBeRoy/taskipy)
- Editor integration: [VS Code](https://code.visualstudio.com/)
- Documentation: [MkDocs](https://www.mkdocs.org/) (optional)
- Docker support (optional)

## Goals

- Declarative project metadata via [pyproject.toml](https://snarky.ca/what-the-heck-is-pyproject-toml/)
- Automate as much as possible
- The Python community is moving towards declaring all project metadata inside a single file called
  `pyproject.toml`

## Debugging

```sh
copier -f . tmp/
```
