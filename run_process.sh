#!/bin/bash

# Determine the directory of the script based on the shell being used
SHELL_NAME=$(ps -p $$ -o args= | awk '{print $1}')
if [[ "$SHELL_NAME" == *"bash"* ]]; then
    DIR=$(dirname "$(realpath "$BASH_SOURCE")")
elif [[ "$SHELL_NAME" == *"zsh"* ]]; then
    DIR="$(dirname "$(realpath "$0")")"
else
    echo "Unsupported shell: $SHELL_NAME"
    exit 1
fi

# Clone the repository
git clone git@.github.com:acn3to/python-boilerplate.git "$DIR"/python-boilerplate

# Navigate to the script's directory
cd "$DIR"/python-boilerplate || exit

# Check if Poetry is installed
if command -v poetry &> /dev/null; then
    echo "Poetry is already installed."
else
    echo "Installing Poetry..."
    curl -sSL https://install.python-poetry.org | python -
fi

# Install dependencies
poetry install --no-interaction

# Run Pylint
poetry run pylint src/

# Run tests
poetry run pytest
