.PHONY: docs

default: help

all: serve build

h help:
	@grep '^[a-z]' Makefile

s serve:
	mkdocs serve --strict

b build:
	mkdocs build --strict

d deploy:
	cd mclargo.github.io; mkdocs gh-deploy --config-file ../mkdocs.yml --remote-branch master
