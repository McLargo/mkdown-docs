# Virtualenvs

## What is virtualenv

Most important thing in python, is [http://python-guide-pt-br.readthedocs.io/en/latest/dev/virtualenvs/](virtual environment)

virtualenv is a tool to create isolated Python environments. virtualenv creates a folder which contains all the necessary executables and libraries to use the packages that a Python project would need.

## Installation

To install virtualenv tool: `pip install virtualenv`

Test your installation: `virtualenv --version`

## Basic Usage

how to create a virtual environment for a project:
```bash
cd /home/<user>/.virtualenvs/
virtualenv <my_project> --python=/usr/bin/<python-version>
```
To use a particual virtual env, it needs to be activated:
`source ~/.virtualenvs/<my_project>/bin/activate`

Evertyhing you import or install in an activated virtualenv, will be just for this environment

To deactivate a virtual environment:
`deactivate`

