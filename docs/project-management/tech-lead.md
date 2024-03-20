# Technical leader

The job of a tech lead is to make sure the team work with quality. Part of this
job is to plan, design, learn and execute technical solutions and improvements.
Interact with other tech leads, sharing information and good practices. Also,
clarifying technical doubts with stakeholders. Aside from that, a tech lead is
also responsible for the team, understanding member’s strengths, weaknesses.
Mentoring and guide them.

Some actions that a tech lead can do are:

- Keep in touch with popular tech conferences and events
- Read tech blogs daily [cult.honeypot](https://cult.honeypot.io/),
  [Quastor](https://www.quastor.org/)
- Attend meet-ups and also maintain constant communication with other Tech Leads
  around you.

![Tech Lead](../assets/img/tech-lead.png)

## Responsibilities

Automate and improve the development process as much as possible, removing the
need for manual intervention when possible.

Ensure the team is following best practices described below:

### Code quality assurance

A code quality culture is essential, at organizational or individual level. High
code quality ensures your codebase is maintainable, scalable, and efficient,
allowing to deliver new features faster.

- Establish agreed code styles, such as
  [PEP8](https://peps.python.org/pep-0008/). Keep code consistent by
  establishing conventions for things like naming, spacing and indentation.
- No linters issues. Find bugs, duplicity of code, bad practices, TODO/FIXME...
  use tools like [pre-commit hooks](https://pre-commit.com/hooks.html), jenkins,
  sonarqube, etc.
- Good test code coverage with unit and functional test. Over 95% if possible.
- TDD (testing design development) approach when possible. Start implementing
  tests before the code.
- [Testing](../utils/testing.md) plan to ensure the code delivered to live
  environment is bug free and satisfy the expected results.
- Tracking high-quality issues to manage tech debt properly. Prioritize and
  schedule tech debt.
- Have a definition of DONE. A checklist of things that need to be done before a
  ticket is considered done.
- Track code quality metrics and code complexity.
- Peer mentoring when needed.

### Code Comments

Establish conventions to ensure comments are useful, improving engineering
velocity and code quality.

- Managing and reducing technical debt
- While TODO/FIXME are good for single player, but avoid using in teams. Use
  them to aid your personal code development process and never push them to main
  code base branch.
- Focus on the **why**.
- Provide context and explain the intent of the code in classes or methods
  ([docs strings](https://sphinxcontrib-napoleon.readthedocs.io/en/latest/example_google.html))
- Avoid obvious comments.

### Provide architectural and design direction

- Follow SOLID principles.
- Avoid code rewritten or delete not long after creation.
- Reduce code smells by refactoring code.

### Control Technical Debt

- Keeping a low number of technical debt.

### Ensure code review healthiness

- Ensure code reviews are done and are effective.
- Code reviews should be done by a peer, not by the author.
- The author should be able to explain the code to the reviewer. The reviewer
  should be able to understand the code without the author's help.
- Applying good pull request practices.
- Reducing time to merge.
- Avoid huge pull request.

- [Commit lint online](https://commitlint.io/)
- [Docstring pydoc](https://www.datacamp.com/tutorial/docstrings-python)

### Ship good quality code fast

- Deploying to production frequently.
- SMall deployments.
- Keep a relation of bugs per deployment. Are detected fast by the team or user?
  Are fixed fast?

## Motivation

- From external party working with a client, we are the providers, the ones that
  gives the solution.
- Objective of a ticket is to give value to the product, not just close tickets.
- Adapt our work methodology.
- Client can guide, give us rules. But our work is our project. And needs to be
  the best possible.
- We as external need to be lead.

## References

- [Responsibilities of a Tech Lead](https://sourcelevel.io/blog/5-responsibilities-of-a-tech-lead-and-17-metrics-to-track-their-performance)
- [How to build quality code](https://stepsize.com/blog/how-to-build-a-culture-of-code-quality)
