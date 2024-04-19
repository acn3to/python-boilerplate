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

## Or...

## Quick Setup with Shell Script

To streamline the setup and testing of your Python project, you can run an automated process using the provided shell script `run_process.sh`. This script automates the following steps:

1. **Cloning the Repository (if necessary):**
   - If you haven't already cloned the repository, the script will clone it into a directory named `python-boilerplate` in the current directory.

2. **Installing Poetry:**
   - The script checks if Poetry is installed. If not, it automatically installs Poetry.

3. **Installing Dependencies:**
   - Once Poetry is installed, the script installs all project dependencies specified in the `pyproject.toml` file.

4. **Running Pylint:**
   - Pylint is a tool that checks for errors and enforces coding standards. The script runs Pylint on the source code located in the `src` directory.

5. **Running Tests:**
   - Unit tests are executed using pytest to verify the functionality of the Python application.

6. **Building and Running with Docker:**
   - Docker containers are built using the Dockerfile and docker-compose.yml provided in the project.
   - The containers are started to run your Python application.
     
To run the automated process, follow these steps:

1. **Download the Script:**
   - Right-click on the following link and select "Save link as..." to download the script: [run_process.sh](https://raw.githubusercontent.com/acn3to/python-boilerplate/main/run_process.sh?raw=true)
   - Alternatively, you can create a new file named `run_process.sh` in the root directory of your project and copy the content of the script from the provided instructions.

2. **Make the Script Executable:**
   - Open your terminal or command prompt.
   - Navigate to the directory where you saved the `run_process.sh` file.
   - Run the following command to give execute permissions to the script:
     ```bash
     chmod +x run_process.sh
     ```

3. **Run the Script:**
   - Once the script is executable, you can run it using the following command:
     ```bash
     ./run_process.sh
     ```
   - This will initiate the automated process, handling all the setup and testing steps for your Python project.

By using this automated process, you can ensure consistency and efficiency in setting up and testing your Python projects.
