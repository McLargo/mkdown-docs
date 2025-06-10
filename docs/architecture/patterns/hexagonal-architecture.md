# Hexagonal Architecture

Hexagonal Architecture, also known as Ports and Adapters, it is used in software
design to create a clear separation between the core logic of an application and
its external dependencies (input/output mechanisms).

The business logic doesn't depend in any way on the external dependencies (where
any dependency can be easily replaced without affecting the core logic).

Avoid hexagonal architecture when the application is small or simple, as it can
add unnecessary complexity.

## Key Concepts

- Ports: Interfaces that define how the application interacts with the outside
  world. They are abstractions that allow the core logic to communicate with
  external systems.

- Adapters: Implementations of the ports that connect the core logic to external
  systems. They translate the data and calls between the core logic and the
  external systems.

- Core Logic: The central part of the application that contains the business
  rules and logic. It is independent of any external systems or frameworks.

## Performance

Each adapter gather all code related to a specific external system, allowing
developers to optimize the performance of each adapter independently.

## Benefits

- **Separation of Concerns**: The core logic is isolated from external systems,
  making it easier to maintain and test.
- **Testability**: The core logic can be tested independently of external
  systems, allowing for easier unit testing and mocking of dependencies.
- Developers can work independently on different adapters without affecting the
  core logic.

## References

- [Hexagonal Architecture](https://itnext.io/hexagonal-architecture-fe1250fb52be)
