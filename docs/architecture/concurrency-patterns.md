# Concurrency Patterns

Concurrent development is a powerful tool that can be used to improve the
performance of applications. However, it can also introduce a lot of complexity
and potential bugs. We will discuss some common concurrency patterns that can be
used to simplify concurrent development.

In Go, concurrency is achieved using goroutines and channels.

## Worker Pool

Worker pools involve creating a fixed number of workers that process tasks from
a common queue.

This pattern is useful when you have a large number of tasks that need to be
processed concurrently, but you want to limit the number of workers (goroutines)
that are created.

## Fan-out, Fan-in

Multiple workers can be used to process tasks concurrently, and the results can
be combined into a single channel.

## Pipeline

It involves a series of stages connected by channels. Each stage is a separate
goroutine that processes the data and passes it to the next stage.

## Pub/Sub

Allows messages to be published into more than one channel or topic. Then, each
subscriber can receive messages from the channel or topic they are interested
in.

## Rate Limiting

Controls the rate at which tasks are processed. It can be used to limit the of
requests sent to an external service.

## Semaphore

Limits the number of goroutines that can access a shared resource at the same
time. It is useful to control concurrent access to shared resources.

## References

- [Concurrency patterns in Go](https://cgarciarosales97.medium.com/7-concurrency-patterns-in-go-you-should-know-4796e19ee7d4)
