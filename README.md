# Python Boilerplate

This is a simple Python boilerplate project that can be used as a starting point for various types of Python applications.

## Project Structure

```bash
├── .github
│   └── workflows
│       └── build_and_test.yml
├── src
│   └── app.py
├── tests
│   └── test_app.py
├── main.py
├── Dockerfile
├── docker-compose.yml
├── poetry.lock
├── pyproject.toml
├── .pylintrc
└── README.md
```

## Getting Started

### Prerequisites

- Docker: [Installation guide](https://docs.docker.com/get-docker/)
- Poetry: [Installation guide](https://python-poetry.org/docs/#installation)

### Installation

1. Clone the repository:

    ```bash
    git clone git@.github.com:acn3to/python-boilerplate.git
    ```

2. Navigate to the project directory:

    ```bash
    cd python-boilerplate
    ```

3. Install dependencies using Poetry:

    ```bash
    poetry install
    ```

### Usage

#### Running with Docker

1. Build and Start the Docker containers:

    ```bash
    docker compose up
    ```

#### Development

1. Run the Python application locally:

    ```bash
    poetry run python main.py
    ```

### Testing

To run the tests, execute the following command:

```bash
poetry run pytest
```

## Automated Testing

This project includes automated testing using GitHub Actions. Whenever changes are pushed to the main branch, the following steps are executed:

- Dependencies are installed using Poetry.
- Pylint is run to check for code quality in the `src` directory.
- Unit tests are run using pytest.

This ensures that code quality is maintained and that tests pass before merging changes into the main branch.

## Configuring .pylintrc

The .pylintrc file in the root directory of the project contains configuration settings for pylint, a Python code quality checker. Pylint uses this file to determine which checks and conventions to apply when analyzing your code.

You can customize the .pylintrc file to adjust the linting rules according to your preferences. For example, you can enable or disable specific checks, set the severity level for violations, and configure various aspects of pylint's behavior.

For detailed documentation on the configuration options available in the .pylintrc file, refer to the [official pylint documentation](https://pylint.readthedocs.io/en/stable/).