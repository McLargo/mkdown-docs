# Hexagonal Architecture

Hexagonal Architecture, also known as Ports and Adapters, it is used in software
design to create a clear separation between the core logic of an application and
its external dependencies (input/output mechanisms). The business logic doesn't
depend in any way on the external dependencies (where any dependency can be
easily replaced without affecting the core/domain logic).

Avoid hexagonal architecture when the application is small or simple, as it can
add unnecessary complexity.

![Hexagonal architecture](../../assets/img/hexagonal.png)

## Key Concepts

- **Ports**: Interfaces that define how the application interacts with the
  outside world. They are abstractions that allow the core logic to communicate
  with external systems.

- **Adapters**: Implementations of the ports that connect the core logic to
  external systems. They translate the data and calls between the domain
  entities and the external systems. It is the application layer, explaining how
  the pieces fit together and how the flow is orchestrated.

- **Domain Layer**: Focus on the what, it is the central part of the application
  that contains the business entities, rules and logic. It is independent of any
  external systems or frameworks and focuses on the application's functionality.

In a nutshell, hexagonal architecture is designed by layers. The application
layer from the request coming (Driving adapter), goes to the domain layer, and
keep going through other infrastructure layer to the final destination (Driven
adapter). This division into layers gives the flexibility to make changes on the
adapters easily. For example, you can swap out Oracle by SQL Server (or Mongo),
or enable easily an additional entry point for a new consumer.

Technical aspects belongs to the application layer (adapters), while business
logic belongs to the [domain layer](domain-driven.md). This way, the domain
layer is not affected by changes in the external systems. Rule of thumb: if you
swap an external system for a different one, and the core logic is affected,
then the architecture is not hexagonal.

## Benefits

- **Separation of Concerns**: The core logic is isolated from external systems,
  making it easier to maintain and test.
- **Testability**: The core logic can be tested independently of external
  systems, allowing for easier unit testing and mocking of dependencies.
- Developers can work independently on different adapters without affecting the
  core logic.
- **Flexibility**: External systems can be changed or replaced without affecting
  the core logic. Each adapter gather all code related to a specific external
  system, allowing developers to optimize the performance of each adapter
  independently.
- **Stability**: The core logic remains stable even as external systems evolve
  or change, reducing the risk of introducing bugs or breaking changes. It is
  important to avoid tight coupling between the core logic and external systems
  so breaking changes are minimized.

## References

- [Hexagonal Architecture](https://itnext.io/hexagonal-architecture-fe1250fb52be)
- [Hexagonal architecture](https://www.qwan.eu/2020/08/20/hexagonal-architecture.html)
- [Ports and adapters](https://herbertograca.com/2017/09/14/ports-adapters-architecture/#evolving-from-the-layered-architecture)
