# Distributed Transaction Patterns

In microservices architecture, we usually have the same problem. How to handle
distributed transactions?

As contrary to monolithic applications, where we can use a single database,
microservices can have different databases. So managing transactions, rollbacks,
and consistency across multiple services becomes a challenge.

## Challenges

- **Data Consistency**: Ensuring that all services have a consistent view of the
  data.
- **Idempotency**: Ensuring that operations can be retried without causing
  unintended side effects.
- **Failure Handling**: Dealing with partial failures where some services succeed
  while others fail.

## Patterns

- Outbox pattern: store the event in same database as the original data with a
  single transaction. Then, create an event with CDC
  ([Change Data Capture](../architecture/event-driven.md#database-events)) to
  send the event to the message broker, which later can be consumed by other
  services.

- Raw events pattern: all changes in a table are monitored via CDC, and
  events are sent to the message broker.

- Reading yourself pattern: services create events, to be consumed for
  themselves and possible other services.

- Saga pattern: a sequence of local transactions where each transaction updates
  the database and publishes an event or message. If a transaction fails, a
  compensating transaction is executed to undo the changes made by the previous
  transactions. It avoids two-phase commit and allows for more flexible error
  handling. It can be implemented in two ways:
  - **Choreography**: Each service publishes events that trigger the next
    transaction in the saga. This approach is more decentralized and allows for
    greater flexibility.
  - **Orchestration**: A central orchestrator service coordinates the saga by
    invoking each service in the correct order. This approach is more centralized
    and can simplify error handling but may become a bottleneck as the system
    scales.
