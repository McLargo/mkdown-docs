## How to install mkdown-docs

You can install `mkdocs` locally via pip: `pip install mkdocs`

In my case, I installed with `poetry`. First time, execute: `poetry init`

After initialize the project, run to enter the virtualenv: `poetry shell`

To add new mdkocs as a dependency, run: `poetry add mkdocs`

Commands to use on mkdocs are:
```bash
mkdocs new my-mkdocs-project
mkdocs build --clean
mkdocs serve
```

Deploy mkdocs to github pages, from submodule folder:

`mkdocs gh-deploy --config-file ../mkdocs.yml --remote-branch master`

`make` commands available for easy usage of the tool. Run `make` or `make help` for extra support.

## Reference

[mkdocs](https://www.mkdocs.org/)
[Publishing mkdown docs on github pages](https://dev.to/ar2pi/publish-your-markdown-docs-on-github-pages-6pe)
