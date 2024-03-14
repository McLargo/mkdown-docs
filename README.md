# Mkdown docs

This repository contains the source code for my technical wiki, built using
mkdocs. Not only contains the documentation, but also the tools to build and
deploy online to [github pages](https://mclargo.github.io/).

## Makefile

`make` commands available for easy usage of mkdocs cli.
Run `make` or `make help` for extra support.

## Development usage

Dependencies are manger using `poetry`. To initialize the project for the
execute: `poetry install`.

After initialize the project, run to enter the virtualenv: `poetry shell`.

To add new mkdocs as a dependency, run: `poetry add mkdocs`

Once mkdocs installed, you can use the following commands:

```bash
mkdocs new my-mkdocs-project
mkdocs build --clean
mkdocs serve
```

To deploy mkdocs to github pages, run the command from the submodule folder:

`mkdocs gh-deploy --config-file ../mkdocs.yml --remote-branch master`

> :warning: **Before deploying a new version of mkdocs for the first time in a
> new computer, clone folder `mclargo.github.io` here!**

## References

- [mkdocs](https://www.mkdocs.org/)
- [Publishing mkdown docs on github pages](https://dev.to/ar2pi/publish-your-markdown-docs-on-github-pages-6pe)
