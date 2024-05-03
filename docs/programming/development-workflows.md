# Development Workflows

Version control system is a must for any serious software development. It allows
you to track changes in your code, collaborate with other developers and easily
revert changes if needed. The most popular system is git. It is a distributed
version control system, which means that every developer has a full copy of the
repository on his computer. This allows you to work offline and commit changes
locally. When you are ready to share your changes with other developers, you
push your commits to the remote repository. To allow work in parallel, there are
two different workflows.

## git flow

There is one main development branch, usually called `develop`. All new features
are created for this branch, and several commits can be made. Once they are
ready, a pull request is created towards `develop`. Once the pull request is
reviewed by other developers, it is merged into `develop`. Then, a new release
is created, ready to be deployed to production, and later to `master` branch,
with a [tag versioning](../devops/versioning.md) of the release.

Ideally, use this workflow when there are a lot of junior developers, or new
joiners. ALso, then product is stable and any changes can affect heavily in
daily operations by the final user.

In the order hand, can cause bottle neck if the product is starting up and need
top be iterated quickly.

## Trunk-based

All developers work in the same branch, usually `master`. When a new feature is
needed, a new branch is created from `master`. Once the feature is ready, it is
merged into `master`. This workflow is ideal for small teams, where there is a
lot of trust between developers, and the product is still in development. It
allows to iterate quickly, and to have a fast feedback loop. It allows
continuous integration, so when build and tests pass, the code is deployed to
production every single commit.

Smaller commits allow faster code revision, and easier to revert changes if
something wrong happens. Increases confidences in developers.

Combine with [feature flags](../devops/features-toggles.md), where code can be
in production but inactive to the final user. Bigger features are not separated
for long time to master branch, reducing the risk of conflicts when merging.
Almost daily merges to master are done, increasing agile release with CI/CD.

## References

- [Git flow workflow](https://www.atlassian.com/git/tutorials/comparing-workflows/gitflow-workflow)
- [Trunk-based workflow](https://www.atlassian.com/continuous-delivery/continuous-integration/trunk-based-development)
