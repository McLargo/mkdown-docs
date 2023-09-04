# SOLID Principles

SOLID is an acronym of the first five object-oriented design (OOD) principles.
These principles establish practices that lend to developing software with
considerations for maintaining and extending as the project grows. Adopting
these practices can also contribute to avoiding code smells, refactoring code,
and Agile or Adaptive software development. TODO

## Single-Responsibility Principle

A class should have only a single responsibility. Only one potential change in the software’s specification should be able to affect the specification of the class.

## Open/Closed Principle

Software entities should be open for EXTENSION, but closed for MODIFICATION. Allow behavior to be extended without modifying the source code.

## Liskov Substitution Principle

Objects in a program should be replaceable with instances of their subtypes without altering the correctness of that program.

## Interface Segregation Principle

Many client-specific interfaces are better than one general-purpose interface. No client should be forced to depend on methods it does not use.

## Dependency Inversion Principle

One should depend upon abstractions, not concretions.

- High-level modules should not depend on low-level modules. Both should depend on abstractions.
- Abstractions should not depend on details. Details should depend on abstractions.

## References

- [Skteches for the Solid principles](https://okso.app/showcase/solid)
