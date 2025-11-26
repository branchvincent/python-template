FROM python:3.13-alpine AS base
WORKDIR /app

### Builder ###
FROM base AS builder

# Install deps
RUN pip install --no-cache-dir uv~=0.8.0
COPY pyproject.toml uv.lock ./
RUN uv sync --frozen --no-dev --no-install-project

# Add source
COPY . .
RUN uv sync --frozen --no-dev

### Runner ###
FROM base AS runner
COPY --from=builder /app ./
ENV PATH="/app/.venv/bin:$PATH"
ENTRYPOINT ["python", "-m", "project_name"]
CMD ["--help"]
