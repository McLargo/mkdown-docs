# Monolithic architecture

 In a monolithic architecture, the entire application is built as a single,
 tightly integrated unit. All components, modules, and functionalities are part
 of a single codebase and run within the same process. As an alternative to this
 architecture design, we can find service-oriented architecture (SOA) such as
 [microservices](../architecture/microservices.md).

## Principles

- Developers can easily share code between modules and functionalities, but
  development and maintenance can be difficult as the application grows.
  Understanding the entire codebase can become increasingly difficult

- Scaling can be a challenge, as entire application needs to be scaled to
  support extra load of a single component.

- Are built using a single technology stack and database. Any changes or updates
  of technology affects entire application.

- Deploying changes to a monolithic application often requires updating the
  entire application, which can lead to longer deployment times and potential
  disruptions.

- Low fault tolerance and resilience, a single component it can potentially
  bring down the entire application.
