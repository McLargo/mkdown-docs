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

## Outbox pattern

It store the event in same database as the original data with a single
transaction. Then, create an event with CDC
([Change Data Capture](../microservices/event-driven.md#database-events)) to send
the event to the message broker, which later can be consumed by other services.

## Raw events pattern

All changes in a table are monitored via CDC, and events are sent to the message
broker.

- Reading yourself pattern: services create events, to be consumed for
  themselves and possible other services.
