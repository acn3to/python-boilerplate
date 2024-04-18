# Python Boilerplate

This is a simple Python boilerplate project that can be used as a starting point for various types of Python applications.

## Project Structure

```bash
├── github
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
    git clone git@github.com:acn3to/python-boilerplate.git
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

1. Build the Docker image:

    ```bash
    docker compose build
    ```

2. Start the Docker containers:

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

