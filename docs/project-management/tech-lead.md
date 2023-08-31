# Technical leader

The job of a tech lead is to make sure the team work with quality. Part of this
job is to plan, design, learn and execute technical solutions and improvements.
Interact with other tech leads, sharing information and good practices. Also,
clarifying technical doubts with stakeholders. Aside from that, a tech lead is
also responsible for the team, understanding member’s strengths, weaknesses.
Mentoring and guide them.

Some actions that a tech lead can do are:

- Keep in touch with popular tech conferences and events
- Read tech blogs daily [cult.honeypot](https://cult.honeypot.io/)
- Attend meet-ups and also maintain constant communication with other Tech Leads
  around you.

![Tech Lead](../assets/img/tech-lead.png)

## Responsibilities

### Code quality assurance

- No style guide mismatch, using same for the all team. Follow
  [PEP8](https://peps.python.org/pep-0008/).
- No linters issues. Find bugs, duplicity of code, bad practices, TODO and
  FIXME... use tools like [pre-commit hooks](https://pre-commit.com/hooks.html), jenkins, sonarqube, etc.
- Good test code coverage with unit and functional test. Over 95% if possible.

### Provide architectural and design direction

- Follow SOLID principles.
- Avoid code rewritten or delete not long after creation.
- Reduce code smells by refactoring code.

### Control Technical Debt

- Keeping a low number of technical debt.

### Ensure code review healthiness

- Applying good pull request practices.
- Reducing time to merge.
- Avoid huge pull request.


- [Commit lint online](https://commitlint.io/)
- [Docstring pydoc](https://www.datacamp.com/tutorial/docstrings-python)

### Ship good quality code fast

- Deploying to production frequently.
- SMall deployments.
- Keep a relation of bugs per deployment. Are detected fast by the team or user? Are
  fixed fast?

## Motivation

- From external party working with a client, we are the providers, the ones that
  gives the solution.
- Objective of a ticket is to give value to the product, not just close tickets.
- Adapt our work methodology.
- Client can guide, give us rules. But our work is our project. And needs to be
  the best possible.
- We as external need to be lead

## References

- [Responsibilities of a Tech Lead](https://sourcelevel.io/blog/5-responsibilities-of-a-tech-lead-and-17-metrics-to-track-their-performance)
