# Continuous integration

Continuous integration (CI) is an agile and DevOps best practice where
developers integrate their code changes early and often to the main branch or
code repository. The goal is to reduce the risk of seeing "integration hell" by
waiting for the end of a project or a sprint to merge the work of all
developers. Since it automates deployment, it helps teams meet business
requirements, improve code quality, and increase security.

CI is responsible of maintenance of all team. It is not the responsibility of a
single person.

## Automated testing

To get the full benefits of CI, you will need to automate your tests to be able
to run them for every change that is made to the main repository. We insist on
running tests on every branch of your repository and not just focus on the main
branch. This way you will be able to capture issues early and minimize
disruptions for your team. Different types of tests, no need to cover all at
starter.

- Unit tests are narrow in scope and typically verify the behavior of
  individual methods or functions.
- Integration tests make sure that multiple components behave correctly
  together. This can involve several classes as well as testing the integration
  with other services.
- Acceptance tests are similar to the integration tests but they focus on the
  business cases rather than the components themselves.
- UI tests will make sure that the application functions correctly from a user
  perspective.

Run your tests automatically in each commits with a jenkins pipeline. Goal is to
keep build green all the time, writing tests as part of the user stories and
bugs. No merge is allowed if pipeline is not green.

Keep good coverage of your code, at least 80% of your code should be covered by tests.

## References

- [Continuous integration](https://www.atlassian.com/continuous-delivery/continuous-integration)