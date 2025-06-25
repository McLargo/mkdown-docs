# Retry Mechanism

In [asynchronous communication](../communication/asynchronous-messaging.md),
where events and messages are processed by different applications, it is
important to decide what happens and how when a message cannot be processed
successfully.

## Patterns

There are several patterns to implement a retry mechanism in your system. All of
this can be mixed together, depending on your needs.

### In-place retry

It is a very simple solution to implement. Essentially, consumer retry again to
process the event after a certain amount of time. Backoff time can be applied,
either linear or exponential.

This approach have two main side effect. One is that the consumer is blocked.
And second, when an error is persistent, retry wont't work and all messages will
be retried, affecting consumer's performance.

### Decoupled retry

While processing an error of a message, add message to a retry topic/queue.

A retry consumer can read from there, tracking retry attempts using message
headers. This approach doesn't block the main consumer.

### Circuit breaker implementation

If a third-party service is completely down (like connection to database is
lost), avoid sending retries until a certain period.

Consumer can be blocked in this scenario, as none of the messages will be
successfully processed until the service is back up.
[Circuit breaker](../microservices/circuit-breaker.md) avoids further problems
and performance issues.

### Dead-queue letter (DQL)

To avoid retrying forever, send your message to a DQL to investigate further why
message failed. DLQ have no consumer, so it is not processed automatically.

## Considerations

- Consumers must be idempotent.
- Track retry attempts/metadata.
- Add error metadata to the message when sending to retry/DLQ.
- Add Monitoring and logging.
- You need to identify which messages can be retry and which not.

## Kafka Redelivery

Kafka redelivery is a different concept. It means that after a Kafka consumer
pulls for a number of records, if something happens before committing the
offset, Kafka re-delivers the same message.

Kafka producers can be configured for retry and idempotent.
