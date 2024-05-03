# Task Runner

A task runner is a tool that automates and simplify the execution of repetitive
tasks. It is a command-line tool that can be used to run tasks defined in a
configuration file. The tasks can be anything, from compiling code to running
tests to deploying applications.

As configuration file is pushed to the repository together with the code, it is
easy to share the tasks with other members of the team, to ensure that everyone
is running tasks in the same way. This can help to reduce errors and
improve consistency in the way that tasks are run.

## Makefile

[Makefile](https://www.gnu.org/software/make/) is a build automation tool that
helps to compile and build projects. It is a simple way to define tasks and
dependencies between them. Makefile is a good choice for simple projects, but it
can become complex and hard to maintain as the project grows.

Only supported in Linux and MacOS.

## Task file

[Task file](https://taskfile.dev/) is a task runner that is designed to be a
simpler version of Makefile. It is a YAML-based task runner that is easy to read
and write. Task file is a good choice for projects that need a simple way to
define tasks and dependencies between them.

It is written in go, and supports Linux, MacOS, and Windows.
