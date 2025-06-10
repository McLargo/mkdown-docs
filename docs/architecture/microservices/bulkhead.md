# Bulkhead Pattern

It has similar purpose as the
[Circuit Breaker pattern](../microservices/circuit-breaker.md), but it focuses
on isolate different services, dividing them into critical and non-critical
services.

If one non-critical service fails, it must not affect the critical services (the
ones important for your business).

It can be achieved by use separate sources/resources or different clusters.

## References

- [Bulkhead Pattern](https://medium.com/nerd-for-tech/bulkhead-pattern-distributed-design-pattern-c673d5e81523)
