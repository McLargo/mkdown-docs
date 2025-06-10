# Asynchronous Messaging

An asynchronous messaging system is a system that allows communication between
two or more parties without the need for the sender to wait for the receiver to
respond. The sender sends the message and continues with its own processing. The
receiver receives the message and processes it. The receiver can then send a
response message to the sender, which can be processed by the sender. Producer
and consumer are different processes. There are two main messaging patterns:
message queuing and publish/subscribe.

## Message queuing

Multiple producers can send message to the same queue, but once the message is
consumed, is removed. Only one consumer consume a specific message.

## Publish/subscribe

Multiple produced can publish a message to a topic, and several consumers can
subscribe to the same topic, consuming and handle the message in different ways.
Messages can be ephemeral or durable. Used for
[event-driven architecture](../microservices/event-driven.md).

## RabbitMQ

RabbitMQ supports classic message queuing out of the box. A developer defines
named queues, and then publishers can send messages to that named queue.
Consumers, in turn, use the same queue to retrieve messages to process them.

## Kafka Topics

Kafka doesn’t implement the notion of a queue. Instead, Kafka stores collections
of records in categories called **topics**.

## References

- [RabbitMQ vs Kafka](https://betterprogramming.pub/rabbitmq-vs-kafka-1ef22a041793)
