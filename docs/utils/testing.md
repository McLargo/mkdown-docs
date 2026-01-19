# Testing

Testing is equally important as writing the code. It is a way to ensure that the
code is working as expected and to catch any bugs that may have been introduced
before going to a live environment and affect the final user. It can be either
manual or automated. Manual tests are usually done by people vs automated tests
are done by machines.

No matter if you are in a small team or in a big company, testing is a **must**.
We are human after all, and mistakes can happens.

There are different types of tests, where each layer described is important to
cover because each has its own purpose. The most common types of tests are:

## Unit test

Cover the smallest piece of code, usually a function or a method. The goal is to
test the code in isolation, without any dependencies. Making sure any changes in
the code will not break the expected behavior.

Test should be fast and deterministic (same result over and over). It should not
depend on any external resource, such as a database, network, or file system.

It is a good idea to check the coverage on your tests. If any line is not
covered, means that test may not be completed or that the code is not being
used, given you the opportunity to remove it.

Some concepts commonly used in unit testing:

- **Coverage**: metric that measures the amount of code that is covered by
  tests. It generates a report showing which are the total lines of code, which
  are covered by tests and which are not. The higher the coverage, the better.
  But it is important to note that 100% coverage does not mean that the code is
  bug free, it only means that all lines are covered by tests.
- **Mocking**: when testing logic that depends on external resources, such as a
  database or a external HTTP request, it is a good practice to mock the
  response. This way, the test is not dependent on the external resource, giving
  faster and deterministic tests.
- **Fixtures**: common way to set up and tear down resources that are used in
  the tests. It is a way to avoid code repetition and to keep the tests clean,
  ensuring that data is consistent across all tests.
- **Parametrized tests**: procedure to run the same test with different inputs.

## Mutation test

Mutation testing is a technique to measure the quality of the tests. Even if you
have a 100% coverage, it doesn't mean that your tests are good enough. Mutation
testing changes your code in tiny ways called mutations, and then runs your
tests to see if they catch the changes. If your tests fail, it means they caught
the mutation, so mutant is killed. If your tests pass, it means they didn't
catch the mutation, so mutant survived. The goal is to identify weak spots in
your code by having a high mutation score. The higher the score, the better your
tests are at catching bugs.

## Integration test

Integration tests are used to test the interaction between different parts of
the application. It is a way to ensure that the different parts are working
together as expected.

Integration can be done to some components you have control (database, cache,
message broker...) or to external services (like third party APIs). In case of
external API services, it is a good practice to mock the responses (successful
and unsuccessful) to avoid dependency on the external service, making tests
faster and deterministic. You can apply custom rules for more complex responses,
simulate network errors or even insert latencies. Some tools to create mock
servers are [Mockoon](https://mockoon.com/) or
[Beeceptor](]https://beeceptor.com/).

## End-to-end test

Tests the whole application against a live production-like server. It is a way
to ensure that the application is working as expected from the user's
perspective. Usually, it is done with a browser automation tool, such as
Selenium. In case of an API, you can automate with Postman. If is not possible
to automate, it can be done manually.

These tests are slow and hard to create and maintain, but are important to
ensure that the application is working as expected.

- **Smoke test**: are a subset of end-to-end tests. They are used to ensure that
  the the most important features of the application are working as expected,
  preventing the application to be usable. Smoked tests have a limited scope,
  completed in a short time.
- **Regression test**: confirms that previously developed and tested features in
  an application still works correctly after any changes are introduced.
  Regression tests have wider scope and covers all areas in the application,
  taking longer to complete.

## Performance test

Performance tests are testing methods to measure how the system behaves and
performs under a particular load.

- **Load test**: load testing is the process of checking the behavior of the
  system under an anticipated load.
- **Stress test**: the goal of stress testing is to identify the saturation
  point and the first bottleneck of the application under test. Once is
  identified, it is possible to patch that part of the system to avoid the
  bottleneck.
- **Spike Tests**: test the system's reaction to sudden and extreme changes in
  load.

## Tools

Aside from unit and integration tests that can be implemented in the repository
in any language, there are other tools that can be used to test your
application:

- [Postman](https://www.postman.com/): allows to create collection of requests
  (REST, graphql, gRPC...) that can be run manually or automated. You can also
  set authorization, environment variables, pre-request scripts and complex
  flows.
- [Bruno](https://getbruno.io/): similar to Postman, but simpler and open
  source. Collection are files that can be stored in the repository.
- [JMeter](https://jmeter.apache.org/): open source tool to perform load testing
  and measure performance. It can simulate a heavy load on a server, group of
  servers, network or object to test its strength or to analyze overall
  performance under different load types.
- [Locust](https://locust.io/): open source load testing tool that allows
  writing test scenarios in Python. It is easy to use and can be integrated with
  CI/CD pipelines.
- [Newman](https://www.npmjs.com/package/newman): command line tool to run
  Postman collections. It can be integrated with CI/CD pipelines.
- [Selenium](https://www.selenium.dev/): open source tool to automate browsers.
  It can be used to create end-to-end tests for web applications.

## UAT

User Acceptance Testing (UAT) is the last phase of the software testing process,
the last step before a feature/application can be live. Ideally, UAT should be
done in an environment that resembles the production environment, with real data
and real users. This way, it is possible to catch any issues that may arise in
the production environment.

A proper UAT should include different test executions, each representing a Use
Case or User Story. Each test execution is divided in different steps, where
input and expected results are defined prior to execution. UAT should cover
happy path and edge cases. A good practice is to create a document, written in a
non-technical language, like
[Gherkin](https://cucumber.io/docs/gherkin/reference) that can be shared with
all teams involved. Each test execution should be traceable to a requirement,
user story or use case. Evidence of test execution should be recorded, either
with screenshots, video or logs, and should be approved by
[product owners](../project-management/product-owner.md) and/or stakeholders.

During UAT, not just development team or QA should perform tests, but also
actual software users. They will be working daily with the software, so they
need to make sure it can handle required tasks in real-world scenarios,
according to specifications.

## References

- [Testing in python](https://testdriven.io/blog/testing-python/)
- [Load testing](https://www.raullg.com/que-es-el-load-testing/)
