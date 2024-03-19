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

### Coverage

Coverage is a metric that measures the amount of code that is covered by tests.
It generates a report showing which are the total lines of code, which are
covered by tests and which are not.

The higher the coverage, the better. But it is important to note that 100%
coverage does not mean that the code is bug free. It only means that all lines
are covered by tests.

It is a good idea to check the coverage on your tests. If any line is not
covered, means that test may not be completed or that the code is not being
used, given you the opportunity to remove it.

### Mocking

When testing logic that depends on external resources, such as a database or a
external HTTP request, it is a good practice to mock the response. This way, the
test is not dependent on the external resource, giving faster and deterministic
tests.

### Fixtures

Fixtures are a way to set up and tear down resources that are used in the tests.
It is a way to avoid code repetition and to keep the tests clean, ensuring that
data is consistent across all tests.

### Parametrized tests

Parametrized tests are a way to run the same test with different inputs.

## Integration test

Integration tests are used to test the interaction between different parts of
the application. It is a way to ensure that the different parts are working
together as expected.

## End-to-end test

Tests the whole application against a live production-like server. It is a way
to ensure that the application is working as expected from the user's
perspective. Usually, it is done with a browser automation tool, such as
Selenium. In case of an API, you can automate with Postman. If is not possible
to automate, it can be done manually.

These tests are slow and hard to create and maintain, but are important to
ensure that the application is working as expected.

### Smoke test

Smoke tests are a subset of end-to-end tests. They are used to ensure that the
the most important features of the application are working as expected,
preventing the application to be usable. Smoked tests have a limited scope,
completed in a short time.

### Regression test

Confirms that previously developed and tested features in an application still
works correctly after any changes are introduced. Regression tests have wider
scope and covers all areas in the application, taking longer to complete.

## Performance test

Performance tests are testing methods to measure how the system behaves and
performs under a particular load.

### Load test

Load testing is the process of checking the behavior of the system under an
anticipated load.

### Stress test

The goal of stress testing is to identify the saturation point and the first
bottleneck of the application under test. Once is identified, it is possible to
patch that part of the system to avoid the bottleneck.

### Spike Tests

Test the system's reaction to sudden and extreme changes in load.

## Reference

- [Testing in python](https://testdriven.io/blog/testing-python/)
- [Load testing](https://www.raullg.com/que-es-el-load-testing/)
