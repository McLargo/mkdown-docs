.PHONY: docs

default: help

# Variables
PIP := $(if [-z $(shell which pip) ],pip3,pip)
POETRY := $(shell which poetry 2> /dev/null)

help: ## Show help
	@echo "\nUsage:\e[1;36m make [target]\e[0m\n"
	@egrep -h '\s##\s' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf " -\033[36m  %-20s\033[0m %s\n", $$1, $$2}'


install: ## Install required dependencies
	@if [ -z $(POETRY) ]; then \
		echo "Poetry could not be found, installing..."; \
		$(PIP) install poetry; \
		poetry install; \
	else \
		poetry install; \
	fi

	$(PIP) install pre-commit;
	pre-commit install

serve: ## Serve mkdocs in local
	poetry run mkdocs serve --strict

build: ## Build mkdocs in local
	poetry run mkdocs build --strict

deploy: ## Deploy mkdocs to github pages
	cd mclargo.github.io; poetry run mkdocs gh-deploy --config-file ../mkdocs.yml --remote-branch master
