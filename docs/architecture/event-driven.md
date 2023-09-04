# Event-driven architecture

Generally speaking, a microservice architecture needs that services talk to each
other. No matter what approach is used, if
[Orchestration](../architecture/microservices.md#orchestration) or
[Choreography](../architecture/microservices.md#choreography), both can use an
Event-driven architecture to communicate with the difference services involved.
Events are trigger from services and other services can subscribe to them, and
react upon the event information.

## Domain events

A domain event is, something that happened in the domain that you want other
parts of the same domain (in-process) to be aware of. More into details, we can
distinguish between:

- Events represent a past, something that already happened and can’t be undone.
- Commands, on the other hand, represent a wish, an action in the future which
  can be rejected.

## Database events

Changes in database can also be used as events. For example, a database trigger
when a row is inserted, updated or deleted, called CDC (Change Data Capture).

## References

- [Domain event](https://serialized.io/ddd/domain-event/)