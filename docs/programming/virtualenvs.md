# Virtualenvs

## What is virtualenv

Most important thing in python, is
[http://python-guide-pt-br.readthedocs.io/en/latest/dev/virtualenvs/](virtual
environment)

virtualenv is a tool to create isolated Python environments. virtualenv creates
a folder which contains all the necessary executables and libraries to use the
packages that a Python project would need.

## Installation

To install virtualenv tool: `pip install virtualenv`

Test your installation: `virtualenv --version`

## Basic Usage

how to create a virtual environment for a project:

```bash
cd /home/<user>/.virtualenvs/
virtualenv <my_project> --python=/usr/bin/<python-version>
```

To use a particular virtual env, it needs to be activated:
`source ~/.virtualenvs/<my_project>/bin/activate`

Everything you import or install in an activated virtualenv, will be just for
this environment

To deactivate a virtual environment:
`deactivate`

## Poetry

Poetry is a dependency management. Easy installation, and management. Instead of
a mix of files related to installation, everything is managed in file
**pyproject.toml**. Also allows to differentiate between library installation
for dev and production.

According to [pep518](https://peps.python.org/pep-0518/), **pyproject.toml** is
the file where the build system dependencies should be stored in
[TOML](https://realpython.com/python-toml/) format. Toml is basic key-vales pair
format. It can group common configuration, and it can be use for multiple
purposes.
