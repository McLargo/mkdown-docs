# How to install mkdown-docs

You can install `mkdocs` locally via pip: `pip install mkdocs`

In my case, I installed using `poetry`. First time, execute: `poetry init`. If
second, execute: `poetry install`.

After initialize the project, run to enter the virtualenv: `poetry shell`.

To add new mkdocs as a dependency, run: `poetry add mkdocs`

Commands to use on mkdocs are:

```bash
mkdocs new my-mkdocs-project
mkdocs build --clean
mkdocs serve
```

Deploy mkdocs to github pages, from the submodule folder:

`mkdocs gh-deploy --config-file ../mkdocs.yml --remote-branch master`

> :warning: **Before deploying a new version of mkdocs for the first time in a
> new computer, clone folder `mclargo.github.io` here!**

## Makefile

`make` commands available for easy usage of mkdocs cli explained above.
Run `make` or `make help` for extra support.

## References

- [mkdocs](https://www.mkdocs.org/)
- [Publishing mkdown docs on github pages](https://dev.to/ar2pi/publish-your-markdown-docs-on-github-pages-6pe)
