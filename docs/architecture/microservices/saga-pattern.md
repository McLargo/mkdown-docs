# Saga pattern

Saga pattern is a sequence of local transactions where each transaction updates
the database and publishes an event or message. If a transaction fails, a
compensating transaction is executed to undo the changes made by the previous
transactions.

This pattern assure that data will be eventually consistent across multiple
services in case one step fails. It avoids two-phase commit and allows for more
flexible error handling.

It can be implemented in two ways:

- **Choreography**: Each service publishes events that trigger the next
  transaction in the saga. This approach is more decentralized and allows for
  greater flexibility.
- **Orchestration**: A central orchestrator service coordinates the saga by
  invoking each service in the correct order. This approach is more centralized
  and can simplify error handling but may become a bottleneck as the system
  scales.
