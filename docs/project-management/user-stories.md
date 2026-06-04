# User Stories

User Stories are descriptions of a feature written from the point of view of the
final user. They focus on the value that the feature will deliver to them.

The structure of a User Story is typically the following:

```text
As a [type of user],
I want [an action]
so that [a benefit].
```

You can have more than one `I want` statement if the user has multiple needs
related to the same feature. Same for the `so that` statement, you can have
multiple benefits for the same action, but it is not recommended.

## Characteristics of Good User Stories

- Keep it simple and concise. Should be completed in a single sprint (2 weeks).
- Make clear what is the value to the user.
- Independent, so it can be developed and delivered independently.
- Open to discussion and changes.
- Focus on the "why".
- Help to keep the focus on the user needs, by using the user's language.
- Avoid technical specifications.
- Testable, with clear acceptance criteria.
- Flows are highly recommended to navigate through complex user interactions.

## Acceptance Criteria

Acceptance Criteria are the conditions that a User Story must satisfy to be
considered complete. They act as a checklist that the development team can use
to verify that the User Story has been implemented correctly and the
requirements are clear.

They are also the bridge between all teams involved, from the Product Owner,
Developers, QA team and the stakeholders.

They should be clear, concise, and testable. They can be written in a
Given-When-Then format:

```text
Given [context or preconditions]
When [action or event]
Then [expected outcome or result]
```

At the end of the day, they are the minimum acceptance tests that the QA team
will use to verify that the implementation is correct. So they should be clear
and testable.

> Note for developers: each acceptance criteria should be testable with an
> integration test. Even, you can write the tests before the implementation,
> following a Test-Driven Development approach.

## User Flows

User Flows are visual representations of the steps a user takes to achieve a
specific goal within a product. They help to understand the user's journey and
identify potential pain points/edge cases in the user experience. Not every User
Story needs a User Flow, but they are highly recommended for complex user
interactions.

## Implementation

Once the User Story is defined, it is the responsibility of the tech lead to
divide into smaller tasks (or smaller User Stories) and assign them to the
development team. The tasks should be clear and specific, with a clear
[definition of
done](https://github.com/McLargo/project-template/blob/master/technical/definition-of-done.md)
and acceptance criteria related.

## Side notes

If you are using AI assistants, consider Spec-Driven development. Plan with the
AI agent to make a detailed and structured specification of it (markdown format
is recommended). Then, the AI agent can generate the code based on the
specification, plus generate test based on the acceptance criteria.

Planning with the IA is a good idea to avoid assumptions, find edge cases and
refine requirements. So the implementation can be more efficient and with less
iterations.
