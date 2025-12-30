# Welcome to McLargo's technical wiki

If I have to pick one single objective on why I do this documentation, that
would be to write down my **Clean Code philosophy**. Over the years, I have
learned a lot of things, and I cannot resume everything in one document, but in
a collection of them. All the best practices and good habits I applied on my
daily work.

## What you can find in here

This **MUST** be a dynamic documentation, constantly updated. Any new tool learn
or good practice to include in my daily work must have a space in this project.
Also, guidelines/ways of working applicable, no matter my current project.

Grouped in different categories:

| Topic              | Description                                    |
| ------------------ | ---------------------------------------------- |
| Architecture       | Related to patterns, architecture designs...   |
| DevOps             | Related to deployments, ci/cd...               |
| Machine Learning   | Related to machine learning, data science...   |
| Programming        | Directly related to programming                |
| Project management | Project management stuff                       |
| Utils              | Misc of other utils required for daily basics  |

With time and more documents covered, relation between them will be enriched. It
shouldn't be a just isolated documents, but more of a wiki to cover my
professional philosophy and understanding on technical topics.

## Tools

I am using [markdown](https://www.markdownguide.org/) to make it easier to build
new documents from IDE. [Template sample available for this wiki](template.md).

I am following
[markdown good practices](https://learn.microsoft.com/en-us/powershell/scripting/community/contributing/general-markdown?view=powershell-7.3).
Highlighted practices are:

- Don't use more than one blank line.
- Remove extra spaces at the end of lines.
- Always uses spaces instead of hard tabs.
- Only one H1 per document.
- Header levels should increment by one -- don't skip levels.
- Limit line length to 100 characters.

There is a pre-commit to validate markdown files, so you can check it before
committing.

[Mkdocs](https://www.mkdocs.org/) as site generator for my documentation.
Includes nice features as search, customizable layout and easy deployment to
github pages, making it 100% online.

Repo that generate this website, can be found in my github.

## What you cannot find in here

- cheatsheets, they belong to
  [installation repo](https://github.com/McLargo/installation/tree/master/help).
  Help is available directly in the terminal.
- code, that belongs to [github](https://github.com/McLargo/). Either
  private/public repo.
- [mentoring assets](https://github.com/McLargo/mentoring)
- interview process/reviews.
- books or manuals. Check in Google Drive.

## References

- [mkdocs](https://mkdocstrings.github.io/)
- [mkdocs catalog](https://github.com/mkdocs/catalog)
