# Asynchronous Messaging

An asynchronous messaging system is a system that allows communication between
two or more applications in your system without the need for the sender to wait
for the receiver to respond.

The sender sends the message and continues with its own processing. The receiver
receives the message and processes it. The receiver can then send an ACK
response message to the sender, which can be processed by the sender.

This is used in
[microservices architectures](../microservices/microservices.md) to decouple
services and applications.

A key concept in asynchronous communication is that
[messages consumption must be idempotent](../patterns/retry-mechanism.md),
meaning that the same message can be processed multiple times without causing
unintended side effects, and keeping the system in the same state.

There are two main messaging patterns: message queuing and publish/subscribe.

## Message queuing

Multiple producers can send message to the same queue, but once the message is
consumed, is removed. Only one consumer consume a specific message.

## Publish/subscribe

Multiple producers can publish a message to a topic, and several consumers can
subscribe to the same topic, consuming and handle the message in different ways.
Messages can be ephemeral or durable. Used for
[event-driven architecture](../microservices/event-driven.md).

Usually the message have a schema, which is the contract defined between
producers and consumers. Json and Avro are some of the most common formats used
to define the schema.

## Tools

### RabbitMQ

RabbitMQ supports classic message queuing out of the box. A developer defines
named queues, and then publishers can send messages to that named queue.
Consumers, in turns, use the same queue to retrieve messages to process them.

### Apache Kafka

Kafka doesn’t implement the notion of a queue. Instead, Kafka stores collections
of records in categories called **topics**.

Topics can be partitioned, allowing multiple consumers to read from the same
topic in parallel.

Topics have a retention policy, which means that messages are not deleted
immediately after being consumed. Instead, they are kept for a certain period of
time and in some scenarios, forever. So all messages can be consumed again by
moving the consumer offset to the desired position of the topic.

## References

- [RabbitMQ vs Kafka](https://betterprogramming.pub/rabbitmq-vs-kafka-1ef22a041793)
