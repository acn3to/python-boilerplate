# syntax=docker/dockerfile:1
FROM python:3.10-alpine
WORKDIR /code
COPY pyproject.toml poetry.lock ./
RUN pip install poetry && poetry config virtualenvs.create false && poetry install --no-root --no-dev
COPY . .
CMD ["python", "main.py"]
