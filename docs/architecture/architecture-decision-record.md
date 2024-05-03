# Architecture Decision Record

Usually, decision on a project are made verbally, or during a discussion in
chat/email, across few people (colleagues, customer...) inside a context. If we
don't document these decisions, it is going to be hard to remember why decision
was made in few months.

If those documents are missing, next generation of developers can just blindly
accept it (team will be afraid of make any changes they don't understand) or
blindly change it (project can be damage or have side effects). With these
documents included inside the project, makes them easier to related and
maintain. These documents needs to be simply (low effort is put, but very
agile), and developers don't get lazy to create them. Help onboarding people to
get up to speed in a asynchronous way.

A missing decision can be identify during PR review, when new patter/library is
added without corresponding ADR document. Even enough small decisions can
compound into a future problem that requires a large process or effort

## Components

- **Title:** brief description of the decision
- **Context:** explains the context and facts behind the decision
- **Decision:** longer statements of the decision made
- **Status:** [Proposed, Accepted, Deprecated, Superseded]
- **Consequences:** how it will impact the project itself

## Tips for using Lightweight ADR

- Use markdown and store along with the component it relates to in source control
- Number the files sequentially, don't reuse it (just update if required)
- Keep it brief and use plain, easy to understand language
- Peer review as you would code
- For cross cutting decisions that affect multiple components consider making a
  separate "architecture" repository
- When you make a decision document it immediately!

## References

- [Lightweight decision records](https://github.com/peter-evans/lightweight-architecture-decision-records)
- [Documenting architecture decision](https://cognitect.com/blog/2011/11/15/documenting-architecture-decisions)
- [Write decision record](https://engineering.atspotify.com/2020/04/when-should-i-write-an-architecture-decision-record/)
