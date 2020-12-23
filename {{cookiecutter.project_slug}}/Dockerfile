FROM python:3.9 AS base
WORKDIR /app

### Build phase ###
FROM base AS builder

# Add deps
RUN pip install poetry~=1.1
RUN poetry config virtualenvs.in-project true
COPY pyproject.toml poetry.lock ./
RUN poetry install --no-root --no-dev

# Add source
COPY . .
RUN poetry install --no-dev

### Final stage ###
FROM base AS production
ENV PATH="/app/.venv/bin:$PATH"
COPY --from=builder /app ./
ENTRYPOINT ["your-package-cli"]
