# Microservices

## Events

Generally speaking, a microservice architecture needs that some service talk to
each other, trigger some actions in response to other service... THis is achieve
with events.

A domain event is, something that happened in the domain that you want other
parts of the same domain (in-process) to be aware of. More into details, we can
distinguish between:

- Events represent a past, something that already happened and can’t be undone.
- Commands, on the other hand, represent a wish, an action in the future which
  can be rejected.

An event has typically multiple consumers, but a command is addressed to only one.

## References

- [Domain event](https://serialized.io/ddd/domain-event/)
