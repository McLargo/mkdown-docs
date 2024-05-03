# Event-driven Architecture

Generally speaking, a microservice architecture needs that services talk to each
other. No matter what approach is used, if
[Orchestration](../architecture/microservices.md#orchestration) or
[Choreography](../architecture/microservices.md#choreography), both can use an
Event-driven architecture to communicate with the difference services involved.
Events are trigger from services and other services can subscribe to them, and
react upon the event information. Communication between services using events is
[asynchronous](../architecture/asynchronous-messaging.md).

## Core components of event-driven architecture

The core components of an EDA are:

- Producer: upstream service that generates events and publishes them to the
  event broker.

- Consumers: one or more downstream services that subscribe to events from the
  event broker.

- Brokers: a message broker that receives events from producers, storage them
  and delivers them to consumers. Each event might be delivered to one or more
  consumers.

## Events

An event is a message that represents a change in state or an action in the
system. All events are messages, but not all messages are events.

Usually are represented in a key/value format, where the key is the event type
that identifies the event and the value is the event payload, which contains the
information about the event.

Events are immutable. Once an event is published, it can't be changed. If a
change is needed, a new event must be published with new data.

### Domain events

A domain event is, something that happened in the domain that you want other
parts of the same domain (in-process) to be aware of. More into details, we can
distinguish between:

- Events represent a past, something that already happened and can’t be undone.
- Commands, on the other hand, represent a wish, an action in the future which
  can be rejected.

### Database events

Changes in database can also be used as events. For example, a database trigger
when a row is inserted, updated or deleted, called CDC (Change Data Capture).

## Event producers

Event producer are the part of the system that generates events and publishes
them to the event broker. They can be any part of the system, like a service, a
database, a user interface, etc.

It decides when to publish an event, serialize the event in the corresponding
format and send it to the event broker.

Events can be transmitted immediately, or in batched mode, depending on the
configuration of the event producer.

## Event broker

It's an immutable log of events. It receives events from producers and stores
them.

The event broker is responsible for delivering events to consumers.

### Event stream

An event stream will be a sequence of events that are related to each other. It
can be consumed by multiple consumers. Consumers can read the events in the
stream in the order they were published, as many times as they want (in case
consumer crashes and needs to recover to get the last picture).

Messages can be deleted from the stream after a certain period of time, or after
a certain number of messages.

Kafka or Pulsar are examples of event brokers that support event streams.

### Event queue

Traditional message queues are used to deliver messages to a single consumer.
Once a message is consumed, it's removed from the queue. Multiple consumers
consume different messages from the queue.

RabbitMQ and ActiveMQ are examples of event brokers that support event queues.

## Event consumers

Event consumers are the part of the system that subscribes to events from the
event broker. In case of event stream, each consumer will have a offset to know
which event has been read (offset is the position of the last event read, and
can be updated).

On the order hand, an event queue message will be consumed and removed from the
queue. It can send an acknowledgment to the broker to confirm that the message
has been processed.

## References

- [Domain event](https://serialized.io/ddd/domain-event/)
