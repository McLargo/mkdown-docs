# Python

Python is the language I am more comfortable with. I have been using it for long
time already. It is an interpreted language, so it is easy to play with it (it
doesn't require any compilation or generate a executable file, like java). This
allows to use python from the command line, to more complex files or web
services.

Below are brief explanations of python, but I recommend to check the
[references section](#references) for more information.

## Where to start

First of all, you should install python in your computer. There are many ways to
install, but a good premise is to use the latest stable version available, as
contains the latest features, performance improvements and bug fixes.

Also, consider use [virtualenvs](./virtualenvs.md) or
[poetry](./virtualenvs.md#poetry) to avoid install packages/dependencies globally
in your machine, allowing to use different versions per project.

## Good practices

Use [pep8](https://www.python.org/dev/peps/pep-0008/) as a guide to write code.
Keep code clean is important, as it will be easier to read and understand. It
will also help to keep code consistent, as it will be easier to follow the same
pattern.

pep8 are a set of rules to follow. There are some tools that can help to check
the quality of the code, such as flake8, pylint, ruff... Beauty of pep8, is that
rules are flexible to meet the needs of the project.

## async

When you are running python code, code is executing sequentially in the same
process/thread. That means, process is blocked until code execution stopped. If
another process enters, it acts like a queue. Until process 1 doesn't end,
process 2 won't start execution. It can causes performance problem, as if for
any reason process 1 is waiting (db connection, external request...), during
those milliseconds CPU is waiting doing nothing.

This problem is solved with concurrence. In python, is called `async`, allowing
parallel execution of process, within the same CPU. But don worry, code
execution is lineal inside the same process. So, whatever code you are running,
code order is respected.

Async works when there are many execution of the same code, each goes to a
different thread inside the same process/CPU.

## Testing

python code supports [testing](../utils/testing.md) under the hook. `unittest`
is the standard library, but there are others such as `pytest`.

### pytest

`pytest` is a library that makes it easy to write simple tests. It has different
plugins for the most popular frameworks, such as Django or Flask that can help
you keep the same testing pattern across different projects.

- Simplify the process of set up and tear down with the use of fixtures.
- Supports `assert` statements, which makes it easier to write tests.
- Supports marking tests with different attributes, such as `@pytest.mark.skip`
  or `@pytest.mark.e2e`, which makes it easier to run groups of tests.

### Other testing libraries

- [mutmut](https://github.com/boxed/mutmut): mutation testing to help you enrich
  your tests.
- [Hypothesis](https://hypothesis.readthedocs.io/en/latest/): generates random
  data to test your code.
- [polyfactory](https://pypi.org/project/polyfactory/): library to generate
  mocks with random data for dataclasses, pydantic models...

## References

- [Python](https://www.python.org/)
- [Python introduction](https://www.udacity.com/course/introduction-to-python--ud1110)
- [Learn python](https://learnxinyminutes.com/docs/python/)
- [Online Python exercises](https://www.hackerrank.com/domains/python)
- [My python lessons](https://mclargo.github.io/python-lessons/)
- [Sample of async vs sync](https://realpython.com/async-io-python/#the-asyncio-package-and-asyncawait)
- [pytest plugin list](https://docs.pytest.org/en/latest/reference/plugin_list.html)
