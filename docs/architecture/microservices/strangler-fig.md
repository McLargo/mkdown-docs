# Strangler Fig Pattern

When you find a [monolithic](../patterns/monolithic.md) application that is
difficult to maintain or scale, you can use the Strangler Fig pattern to
gradually identify parts of the monolith and replace them with new
microservices.

As soon as your microservice is ready, you can start routing the traffic to it,
while monitoring. Slowly, you do the same with other parts of the monolith,
until you have replaced the entire monolith with microservices.

It is important to mention that monoliths feature needs to work, so this
approach may implies to maintain data consistency across new and legacy systems.

## References

- [Strangler Fig Pattern](https://medium.com/@sylvain.tiset/the-strangler-fig-pattern-is-what-you-need-to-migrate-monolithic-application-with-legacy-code-to-ec24cf7168eb)
