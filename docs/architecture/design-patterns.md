# Design Patterns

In software engineering, a design pattern is a general repeatable solution to a
commonly occurring problem in software design. A design pattern isn't a finished
design that can be transformed directly into code. It is a description or
template for how to solve a problem that can be used in many different
situations.

## Uses of design patterns

Utilizing design patterns in the development process can accelerate progress by
offering tried-and-tested development models. Effective software design
necessitates the consideration of issues that may only surface during later
implementation stages. The utilization of design patterns aids in mitigating
subtle problems that can lead to significant complications, and it enhances code
readability for developers and architects who are acquainted with these
patterns. These design patterns offer general solutions, presented in a format
that is not bound to specific problems. They serve as templates or blueprints
for structuring code to address specific challenges.

Furthermore, design patterns enable developers to communicate using widely
recognized and comprehensible terms for software interactions. Over time, common
design patterns can be refined, rendering them more robust compared to
improvised design approaches.

Design patterns can be categorized into several different types based on their
primary purpose and the problems they solve. Here are some of the most
well-known design pattern categories:

## Creational Patterns

These patterns focus on object creation mechanisms, abstracting the process of
object instantiation. Common creational patterns include:

- **Singleton Pattern**: Ensures a class has only one instance and provides a
  global point of access to it.
- **Factory Method Pattern**: Defines an interface for creating objects, but
  allows subclasses to alter the type of objects that will be created.
- **Abstract Factory Pattern**: Provides an interface for creating families of
  related or dependent objects without specifying their concrete classes.

## Structural Patterns

These patterns deal with the composition of classes or objects to form larger
structures. They help in defining how objects and classes can be combined to
form more complex structures. Common structural patterns include:

- **Adapter Pattern**: Allows the interface of an existing class to be used as
  another interface.
- **Decorator Pattern**: Attaches additional responsibilities to an object
  dynamically. Decorators provide a flexible alternative to subclassing for
  extending functionality.
- **Composite Pattern**: Composes objects into tree structures to represent
  part-whole hierarchies. Clients can treat individual objects and compositions
  of objects uniformly.

## Behavioral Patterns

These patterns focus on the communication between objects, defining how they
interact and distribute responsibilities. Common behavioral patterns include:

- **Observer Pattern**: Defines a one-to-many dependency between objects so that
  when one object changes state, all its dependents are notified and updated
  automatically.
- **Strategy Pattern**: Defines a family of algorithms, encapsulates each one,
  and makes them interchangeable. It allows the algorithm to vary independently
  from clients that use it.
- **Command Pattern**: Encapsulates a request as an object, thereby allowing for
  parameterization of clients with queues, requests, and operations.
- **Chain of Responsibility Pattern**: Passes a request along a chain of
  handlers, allowing multiple objects to handle the request without the sender
  needing to know which object will handle it.

## Architectural Patterns

These are higher-level patterns that guide the overall structure and
organization of software systems. Examples include:

- **Model-View-Controller (MVC)**: Separates an application into three
  interconnected components - Model (data and business logic), View (user
  interface), and Controller (user input handling).
- **Model-View-ViewModel (MVVM)**: An architectural pattern often used in
  GUI-based applications, similar to MVC but tailored for modern UI frameworks.

## Concurrency Patterns

[Concurrency patterns](./concurrency-patterns.md) address multi-threading and
concurrent programming challenges. Examples include the "Thread Pool" and
"Producer-Consumer" patterns.

## Anti-Patterns

While not traditional design patterns, anti-patterns describe common mistakes or
pitfalls in software design and development. Recognizing and avoiding these
anti-patterns is crucial for writing maintainable and efficient code.

These design patterns are valuable tools for software developers to enhance code
quality, maintainability, and reusability by providing well-established
solutions to recurring design problems.

## References

- [Design patterns](https://sourcemaking.com/design_patterns)
- [Design pattern Python](https://refactoring.guru/design-patterns/python)
